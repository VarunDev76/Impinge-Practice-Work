class OrdersController < ApplicationController
  def index
  	@orders = Order.all
  end

  def show
  end
  
  def create
  	@user = User.find(params[:user_id])
  	@orders = Order.orders.create[order_params]

  	if @orders.save
  		@msg = "Order Will Be Saved"
  		redirect_to userdetails_path
  	end

  end

  def destroy
  end

  def order_params
  	return params.require(:order).permit(:payment)
  end

end
