class Order < ApplicationRecord
  has_many :order_items, dependent: :destroy
  has_many :menu_items, through: :order_items
  belongs_to :user

  TABLE = (1..10)
  validates_inclusion_of :table_number, in: TABLE, on: :update
  validates :table_number, presence: true,  on: :update

  enum :status, {
    waiting: 0,
    pending: 1,
    in_progress: 2,
    delivered: 3
  }, _prefix: true

  def sub_total
    sum = 0
    self.order_items.each do |order_item|
      sum += order_item.total_price
    end
    return sum
  end

  def enough_ingredients?
    create_ing_hash.each_pair do |ingredient, needed_quantity|
      return false if needed_quantity > ingredient.quantity
    end
    return true
  end

  def update_ing
    create_ing_hash.each_pair do |ingredient, needed_quantity|
      ingredient.quantity -= needed_quantity
      ingredient.save
    end
  end

  private

  def create_ing_hash
    ingredient_needed_quantity = Hash.new(0)
    order_items.each do |order_item|
      quantity_menu_item = order_item.quantity
      order_item.menu_item.recipes.each do |recipe|
        needed_quantity = recipe.quantity * quantity_menu_item
        ingredient = Ingredient.find(recipe.ingredient_id)
        ingredient_needed_quantity[ingredient] += needed_quantity
      end
    end
    return ingredient_needed_quantity
  end
end
