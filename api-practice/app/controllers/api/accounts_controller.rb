class Api::AccountsController < Api::BaseController
	def create
	# binding.pry
		id = User.where(params[:id])
		account = Account.new(user_id: id.id , name: params[:account][:name] , address: params[:account][:address])
		if account.save!
			render :json => {data: account , status: 1 , message: "Successfully Create Account."}
		else
			render :json => {data: account , status: 0 , message: "Account is Not Found."}
		end
	end
	def update
		# binding.pry
		account_id = Account.find(params[:account][:id])
		accountUpdate = account_id.update(name: params[:account][:name] , address: params[:account][:address])
		if accountUpdate
			render :json => {data: accountUpdate , status: 1 , message: "Successfully Update Account."}
		else
			render :json => {data: accountUpdate , status: 0 , message: "Account Id Is Not Found."}
		end
	end
	def destroy
		binding.pry
		account_id = Account.find(params[:account][:id])
		accountDelete = account_id.destroy
		if accountDelete
			render :json => {data: accountDelete , status: 1 , message: "Successfully Delete Account."}
		else
			render :json => {data: accountDelete , status: 0 , message: "Account Id Is Not Found."}
		end
	end
end