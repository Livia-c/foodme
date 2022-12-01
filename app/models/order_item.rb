class OrderItem < ApplicationRecord
  belongs_to :menu_item
  belongs_to :order
  validates :menu_item, :order, presence: true

  def total_price
    self.quantity * self.menu_item.price
  end
end
