class AddCheckStatusToMenuItem < ActiveRecord::Migration[7.0]
  def change
    add_column :menu_items, :check_status, :boolean
  end
end
