class RemoveActiveFromOrders < ActiveRecord::Migration[7.0]
  def change
    remove_column :orders, :active, :boolean
  end
end
