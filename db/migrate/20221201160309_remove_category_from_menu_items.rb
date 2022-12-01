class RemoveCategoryFromMenuItems < ActiveRecord::Migration[7.0]
  def change
    remove_column :menu_items, :category, :string
  end
end
