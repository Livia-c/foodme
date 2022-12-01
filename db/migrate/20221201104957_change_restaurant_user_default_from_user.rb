class ChangeRestaurantUserDefaultFromUser < ActiveRecord::Migration[7.0]
  def change
    change_column_default :users, :restaurant_user, false
  end
end
