class OrdersController < ApplicationController
  def index
    @user = User.find(params[:user_id])
    @allData = @user.orders.all
  end

  def show
  end

  def new
  end

  def create
  end

  def edit
  end

  def destroy
  end

  def order_params
    return params.require(:order).permit(:user_id, :order_name, :order_description )
  end

end
