class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def show
    @id = params(:id)
    @users = User.find(@id)
  end

  def edit
  end

  def update
    @user_records = params[:user_id]
  end

  def new
    @users = User.new
    # @user = User.new.build_value
  end

  def create
    @users = User.new(user_params)
    if @users.valid?
        @users.save
        @msg = "User will Save the records"
        redirect_to users_path
    else
        @errors = @users.errors.full_messages
        render new_user_path
    end
  end

  def destroy
    @user = User.find(params[:id])
    if @user.destroy
      redirect_to users_path      
    end
  end

  def user_params
    return params.require(:user).permit(:name, :value)
  end

end
