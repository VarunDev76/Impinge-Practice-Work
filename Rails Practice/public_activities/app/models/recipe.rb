class Recipe < ApplicationRecord
	# include PublicActivity::Common
	# include Mongoid::Document
	include PublicActivity::Model
	tracked owner: ->(controller, model) { controller && controller.current_user }

	has_many :comments, dependent: :destroy
end
