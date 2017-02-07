class UsersController < ApplicationController
  before_action :get_all_users , only: [:index,:show]
  before_action :set_id , only: [:update,:destroy,:show]

  def get_all_users
  	@users = User.all
  end

  def index
  end


  def show
  	@id = params[:id]
  	@users = User.find(@id)
  end

  def new
  	@users  = User.new
  end

  def create
  	@user = User.new(user_params)
  	if @user.valid?
  		@user.save
  		redirect_to users_path
  	end
  end

  def set_id
  	@id = params[:id]
  end

  def destroy
  	@user = User.find(@id)
  	if @user.destroy
  		redirect_to user_path
  	end
  end

  def user_params
  	return params.require(:user).permit(:email,:password)
  end

end
