class UserdetailsController < ApplicationController
  def index
 	 
  end

  def show
  	@userdetails = Userdetail.all
  end

  def new
  end

  def destroy
  end
end
