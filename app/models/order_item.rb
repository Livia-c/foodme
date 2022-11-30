class OrderItem < ApplicationRecord
  belongs_to :menu_item
  belongs_to :order

  # def total_price
  #   self.quantity * self.menu_item.price
  # end
end
