class MenuItem < ApplicationRecord
  has_many :recipes, dependent: :destroy
  has_many :ingredients, through: :recipes
  has_many :order_items, dependent: :destroy
  has_many_attached :photos
  validates :name, :spiciness, :price, :menu_item_type, presence: true

  before_create :attach_default
  before_update :attach_default

  CATEGORY = ["starter", "soup", "main dish", "side", "dessert", "drink", "other"]
  validates_inclusion_of :menu_item_type, in: CATEGORY

  def attach_default
    photos.attach(io: File.open(File.join(Rails.root,'app/assets/images/no-img.jpg')), filename: 'no-img.jpg') if photos.empty?
  end

  def available?
    recipes.each do |recipe|
      quantity_needed = recipe.quantity
      ingredient = Ingredient.find(recipe.ingredient_id)
      current_quantity = ingredient.quantity
      return false if quantity_needed > current_quantity
    end
    return true
  end

  def max_available?
    max_number = Float::INFINITY
    recipes.each do |recipe|
      quantity_needed = recipe.quantity
      ingredient = Ingredient.find(recipe.ingredient_id)
      current_quantity = ingredient.quantity
      available_number = (current_quantity / quantity_needed).floor
      max_number = available_number if max_number > available_number
    end
    return max_number
  end
end
