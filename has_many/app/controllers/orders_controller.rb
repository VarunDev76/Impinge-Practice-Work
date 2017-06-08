class OrdersController < ApplicationController
  def index
    # binding.pry
    @user = User.find(params[:user_id])
    @allData = @user.orders.all
  end

  def show
  end

  def new
    @user = User.find(params[:user_id])
    @order = @user.orders.new
  end

  def create
    @order = Order.new(order_params)
    if @order.save!
      redirect_to users_url
    else
      render new_user_order_url
    end
  end

  def edit
  end

  def destroy
  end

  def order_params
    return params.require(:order).permit(:user_id, :order_name, :order_description )
  end

end
