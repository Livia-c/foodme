class Recipe < ApplicationRecord
  belongs_to :menu_item
  belongs_to :ingredient

  validates :quantity, presence: true
  validates :ingredient, uniqueness: true
end
