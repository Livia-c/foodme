class ApplicationController < ActionController::Base
  before_action :authenticate_user!

  # commented because using user instead of session
  # from https://goodjobbin85.github.io/creating_a_shopping_cart_in_rails_part_i
  # from https://medium.com/@yxp010/simple-shopping-cart-in-rails-ece6f51b27e6
  # def current_order
  #   if session[:order]
  #     @order = Order.find(session[:order])
  #   else
  #     @order = Order.create
  #     session[:order] = @order.id
  #   end
  # end
end
