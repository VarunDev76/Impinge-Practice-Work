class UsersController < ApplicationController
  
  def new
  
  end

  def create
  	@user = User.new(users_params)
  	if @user.save
		@msg = "User Saved Succesfully"
		redirect_to users_path  		
  	end
  end

  def list
  
  end

  def destroy
  
  end

  def update
  
  end

  def users_params
  	return params.require(:user).permit(:name , :email , :password , :address)
  end

end
