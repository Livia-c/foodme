class ChangeQuantityInIngedient2 < ActiveRecord::Migration[7.0]
  def change
    change_column :ingredients, :quantity, :decimal, precision: 15, scale: 2
    remove_column :menu_items, :check_status, :boolean
  end
end
