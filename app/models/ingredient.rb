class Ingredient < ApplicationRecord
  has_many :recipes
  validates :name, uniqueness: true

  UNIT = ["kg", "g", "l", "ml", "pcs", "can"]
  validates_inclusion_of :unit, in: UNIT

  CATEGORY = ["vegetable", "fruit", "carbohydrate", "protein", "dairy", "spice", "other"]
  validates_inclusion_of :category, in: CATEGORY

  def label
    "#{name.capitalize} (#{unit})"
  end
end
