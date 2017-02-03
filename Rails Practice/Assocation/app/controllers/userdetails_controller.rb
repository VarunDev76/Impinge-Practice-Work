class UserdetailsController < ApplicationController
  def index
 	 
  end

  def show
    
  	@users = Userdetail.all
    @page_title = "User Details "
    if @users.nil?
      @errors = @users.errors.full_messages
        render 'new'
      
    end
  end

  def new
    # @id = params[:id]
    # @userdetails = User.find(@id)
    @user = User.new
    @user.build_userdetail

  end

  def create
    # binding.pry
  	@userdetails = Userdetail.new(userdetails_params)
     if @userdetails.save
        @msg = "user Details Saved Succesfully"

        rendirect_to :action=> 'show'
      else
        @errors = @userdetails.errors.full_messages
        render 'new'
     end
    
  end

  def destroy
  @id = params[:id]
  @userdetails  = Userdetail.find(@id)
    if @userdetails.destroy
      @msg = "lo g ho gya delete "
      @userdetails = Userdetail.all
      redirect_to :action=> 'show'
    end
  end

  def userdetails_params
    return params.require(:userdetail).permit(:user_id,:name,:address)
  end
end
