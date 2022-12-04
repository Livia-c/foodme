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
end
