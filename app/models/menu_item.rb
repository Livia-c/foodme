class MenuItem < ApplicationRecord
  has_many :recipes
  has_many :ingredients, through: :recipes
  has_many :order_items, dependent: :destroy
  has_many_attached :photos
  validates :name, :spiciness, :price, :menu_item_type, :photos, presence: true

  CATEGORY = ["starter", "soup", "main dish", "side", "dessert", "drink", "other"]
  validates_inclusion_of :menu_item_type, in: CATEGORY
end
