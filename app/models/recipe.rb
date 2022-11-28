class Recipe < ApplicationRecord
  belongs_to :menu_item
  belongs_to :ingredient
end
