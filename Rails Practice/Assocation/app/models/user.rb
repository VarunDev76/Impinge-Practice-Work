class User < ActiveRecord::Base
	validates_uniqueness_of :email  
	validates_presence_of  :email ,:password 
	validates :password, length:{ in: 5..20} 
	has_one :userdetails
end
