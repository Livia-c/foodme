class ApplicationController < ActionController::Base
  before_action :authenticate_user!
  before_action :current_order

  private

  def current_order
    return unless current_user.present?

    @current_order = current_user.orders.where(active: true).first || @current_order = Order.create(user: current_user, active: true)
  end
end
