class ChangeQuantityInRecipe < ActiveRecord::Migration[7.0]
  def change
    change_column :recipes, :quantity, :float
  end
end
