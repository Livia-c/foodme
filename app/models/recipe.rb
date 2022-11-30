class Recipe < ApplicationRecord
  belongs_to :menu_item
  belongs_to :ingredient

  validates :quantity, presence: true
  validates :ingredient, uniqueness: { scope: :menu_item, message: "can't be added twice" }
end
