class RemovePriceFromMenuItems < ActiveRecord::Migration[7.0]
  def change
    remove_column :menu_items, :price, :float
  end
end
