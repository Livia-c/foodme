class CreateOrders < ActiveRecord::Migration[7.0]
  def change
    create_table :orders do |t|
      t.integer :table_number
      t.boolean :active
      t.integer :status

      t.timestamps
    end
  end
end
