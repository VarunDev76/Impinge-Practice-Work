class UsersController < ApplicationController
    
  def index
    @allData = User.all
    @products = @allData
    respond_to do |format|
      format.html
      format.csv { send_data @products.to_csv }
      format.xls { send_data @products.to_csv(col_sep: "\t") }
    end
  end

  def show
  end

  def new
    # binding.pry
    @user = User.new
    @user.orders.build
    # 3.times { @user.orders.build }            3 Times Save Orders at a Time
  end

  def create
    @user = User.new(user_params)
    if @user.save
      redirect_to users_url      
    end
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
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
    params.require(:user).permit( :email, :password, orders_attributes: [:id, :user_id, :order_name, :order_description, :_destroy] )
  end

end
