class AccountsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_id , only: [:show , :edit, :update , :destroy]
  def index
  	@allAccount = Account.all
  end

  def show
  	
  end

  def new
  	@newAccount = Account.new
  end

  def create
	@newAccount = Account.new(account_params)
	if @newAccount.save
	  	redirect_to :index
	else
		render :new
	end  	
  end

  def edit
  	
  end

  def update
  	@accountUpdate = Account.find(@id)
  	if @accountUpdate.update(account_params)
  		redirect_to :index
  	else
  		render :edit
  	end
  end

  def destroy
  	@account = Account.find(@id)
  	if @account.destroy
  		redirect_to :index
  	else
  		render :index
  	end
  end

  def set_id
  	@id = Account.find(params[:id])
  end

  def account_params
  	return params.require(:account).permit(:user_id ,:name , :address)
  end

end
