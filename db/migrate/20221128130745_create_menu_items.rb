class CreateMenuItems < ActiveRecord::Migration[7.0]
  def change
    create_table :menu_items do |t|
      t.string :name
      t.text :description
      t.integer :spiciness
      t.integer :cooking_time
      t.integer :price
      t.boolean :vegetarian
      t.boolean :vegan
      t.boolean :signature_dish
      t.string :menu_item_type

      t.timestamps
    end
  end
end
