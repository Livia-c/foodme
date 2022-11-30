class Order < ApplicationRecord
  has_many :order_items, dependent: :destroy
  has_many :menu_items, through: :order_items
  belongs_to :user

  enum :status, { pending: 0, in_progress: 1, delivered: 2 }
  def sub_total
    sum = 0
    self.order_items.each do |order_item|
      sum += order_item.total_price
    end
    return sum
  end
end
