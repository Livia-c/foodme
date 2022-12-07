class Ingredient < ApplicationRecord
  has_many :recipes, dependent: :destroy
  # validates :name, uniqueness: true
  validates :name, :quantity, :unit, :category, presence: true
  validates :quantity, comparison: { greater_than_or_equal_to: 0 }, on: :update
  has_many_attached :photos
  before_create :attach_default
  before_update :attach_default

  UNIT = ["kg", "g", "l", "ml", "pcs", "can"]
  validates_inclusion_of :unit, in: UNIT

  CATEGORY = ["vegetable", "fruit", "carbohydrate", "protein", "dairy", "spice", "other"]
  validates_inclusion_of :category, in: CATEGORY

  include PgSearch::Model

  pg_search_scope :search_by_name_and_category,
    against: [ :name, :category ],
    using: {
      tsearch: { prefix: true }
    }

  def label
    "#{name.capitalize} (#{unit})"
  end

  def attach_default
    photos.attach(io: File.open(File.join(Rails.root, 'app/assets/images/no-picture.jpeg')), filename: 'no-picture.jpeg') if photos.empty?
  end
end
