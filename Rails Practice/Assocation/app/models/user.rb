class User < ActiveRecord::Base
	validates_uniqueness_of :name , :email  
	validates_presence_of :name , :email ,:password , :address
	validates :password, length:{ in: 5..20} 
	validates :name , length:{ in: 3..30}
end
