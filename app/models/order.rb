class Order < ApplicationRecord
  has_many :order_items
  belongs_to :user

  enum :status, { pending: 0, in_progress: 1, delivered: 2 }
end
