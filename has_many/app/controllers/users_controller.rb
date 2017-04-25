class UsersController < ApplicationController
    
  def index
    @allData = User.all
  end

  def show
  end

  def new
    # binding.pry
    @user = User.new
    @user.orders.build
    # 3.times { @user.orders.build }
  end

  def create
    # binding.pry
    @user = User.new(user_params)
    if @user.save
      redirect_to users_url      
    end
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    # binding.pry
    @user = User.find(params[:id])
    if @user.update_attributes(user_params)
      redirect_to users_path
    else
      render :edit
    end
  end

  def destroy
    @user = User.find(params[:id])
    if @user.destroy
      redirect_to users_path
    end
  end

  def user_params
    params.require(:user).permit(:email, :password, orders_attributes: [:id, :user_id, :order_name, :order_description, :_destroy] )
  end

end
