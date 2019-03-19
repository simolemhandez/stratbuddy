class OrdersController < ApplicationController
  def create
    user = User.find(params[:user_id])
    order  = Order.create!(amount: user.price, state: 'pending', user: current_user)
    authorize order
    redirect_to new_order_payment_path(order)
  end

  def show
    @order = current_user.orders.where(state: 'paid').find(params[:id])
    authorize @order
  end
end
