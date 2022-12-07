class Ingredient < ApplicationRecord
  has_many :recipes, dependent: :destroy
  # validates :name, uniqueness: true
  validates :name, :quantity, :unit, :category, presence: true
  validates :quantity, comparison: { greater_than_or_equal_to: 0 }, on: :update
  has_many_attached :photos

  UNIT = ["kg", "g", "l", "ml", "pcs", "can"]
  validates_inclusion_of :unit, in: UNIT

  CATEGORY = ["vegetable", "fruit", "carbohydrate", "protein", "dairy", "spice", "other"]
  validates_inclusion_of :category, in: CATEGORY

  def label
    "#{name.capitalize} (#{unit})"
  end
end
