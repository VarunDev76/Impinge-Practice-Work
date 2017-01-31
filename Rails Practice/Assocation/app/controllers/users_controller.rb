class UsersController < ApplicationController
  
  def list
  	@users = User.all
  end

  def show
  	@id = params[:id]
  	@users = User.find(@id)
  end

  def new
  	@user = User.new
  end

  def create
  	@user = User.new(users_params)
  	if @user.valid?
  		@user.save
		@msg = "User Saved Succesfully"
		redirect_to :action=>'list'
	else
		@errors = @user.errors.full_messages
  		render 'new'
  	end
  end


  def delete
  	@id = params[:id]
  	@user = User.find(@id)
  	@user.destroy

  	redirect_to :action=>"list"
  end

  def edit
  	@id = params[:id]
  	@user = User.find(@id)
  end

  def update
  	@id = params[:id]
	@user = User.find(@id)  

	if @user.update_attributes(users_params)
		@msg = "User Will Update "
		@user = User.all
		redirect_to :action=>'list'
	else
		@errors = @user.errors.full_messages
		render 'edit'
	end

  end

  def users_params
  	return params.require(:user).permit(:email , :password )
  end

end
