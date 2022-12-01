class AddCategoryToMenuItems < ActiveRecord::Migration[7.0]
  def change
    add_column :menu_items, :category, :string
  end
end
