class AddRestaurantUserToUsers < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :restaurant_user, :boolean
  end
end
