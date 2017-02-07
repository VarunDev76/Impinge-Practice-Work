class User < ActiveRecord::Base
	validates :email, :password , presence: true  
	has_many :orders, dependent: :destroy
end
