class OrdersController < ApplicationController
  
  before_action :get_all_orders, only: [:index, :show]
  before_action :set_id, only: [:update, :new , :destroy]

  def get_all_orders
    # @id =  params[:user_id][:id]
    @orders = Order.all
  end

  def set_id
    @id = params[:id]
  end

  def index
    @user = User.find(params[:user_id])
  	@orders = @user.orders
    # @orders = Order.all
  end

  def show
    # @user = User.find(params[:user_id])
  	@order = Order.find(params[:id])
  end

  def new
  	@user = User.find(params[:user_id])
  	@order = @user.orders.new
  end

  def create
  	@user = User.find(params[:user_id])
  	@order = @user.orders.new(order_params)
    if @order.save
      redirect_to user_order_path(@user,@order.id)
    end
  end

  def destroy
    @orders = Order.find(params[:id])
    if @orders.destroy
        redirect_to user_orders_path
    else
      @errors = @orders.errors.full_messages

    end
  end

  def order_params
	return params.require(:order).permit(:order_item,:payment)  	
  end

end
