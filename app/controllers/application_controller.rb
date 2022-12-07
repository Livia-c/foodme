class ApplicationController < ActionController::Base
  before_action :authenticate_user!
  before_action :current_order

  def after_sign_in_path_for(resource_or_scope)
    current_user.restaurant_user? ? root_path : menu_item_customers_path
  end

  private

  def current_order
    return unless current_user.present?

    @current_order = Order.waiting.where(user: current_user).first || @current_order = Order.create(user: current_user)
  end
end
