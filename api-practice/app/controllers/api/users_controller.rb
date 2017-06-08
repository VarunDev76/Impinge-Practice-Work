class Api::UserController < Api::BaseController
	def login
		user = User.authenticate(params[:user][:email], params[:user][:password])
		if user.blank?
			render :json => {data: user , status: 0 , message: "Login Unsuccessfull . No User Found"}
		else
			if user.auth_token.blank?
				user.generate_token
				render :json => {data: user , status: 1 , message: "Login Succesfull."}
			else
				render :json => {staus: 0 , message: "Already Logged In. Please Logut from Other Devises."}
			end
		end
	end
end