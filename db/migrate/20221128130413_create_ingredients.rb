class CreateIngredients < ActiveRecord::Migration[7.0]
  def change
    create_table :ingredients do |t|
      t.string :name
      t.integer :quantity
      t.string :unit
      t.string :category

      t.timestamps
    end
  end
end
