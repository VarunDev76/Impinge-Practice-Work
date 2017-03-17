class OrdersController < ApplicationController
  def index
    @selects = Order.all
  end

  def show
    @selects = Order.find_by_id(params[:id])
    if @selects.nil?
      flash[:alert] = 'Your Id Is NOt Found'
      @msg = flash[:alert]
    else
      flash[:notice] = "Your Id is #{@selects.id} "
      @msg = flash[:notice]
    end
  end

  def new
    @selects = Order.new
  end

  def create
    @select = Order.new(order_params)
    if @select.valid?
     @select.save
      flash[:notice] = 'You are Successfully Saved'
      redirect_to orders_url 
    else
      render :new, :alert=> 'You Should Enter Some Value'
    end
  end

  def delete
  end

  def edit
    @select = Order.find(params[:id])
  end

  def update
  end

  def order_params
    return params.require(:order).permit(:city)
  end

end
