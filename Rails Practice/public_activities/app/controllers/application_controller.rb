class ApplicationController < ActionController::Base
	include PublicActivity::StoreController
	protect_from_forgery with: :exception

	# def current_user
	# 	@current_user ||= User.find(session[user.id]).ifsession[session.id]
	# end

end
