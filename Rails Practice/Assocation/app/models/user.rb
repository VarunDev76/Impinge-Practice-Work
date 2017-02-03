class User < ActiveRecord::Base
	validates_uniqueness_of :email
	validates_presence_of  :email ,:password 
	validates :password, length:{ in: 5..20} , numericality: { only_integer: true} , format:{ with: /\A\d+\Z/ } 
	validates_format_of :email, :with => /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z]+)*\.[a-z]+\z/i , confirmation: {case_sensitive: false}

	has_one :userdetail # , foreign_key:"user_id"
	accepts_nested_attributes_for :userdetail

	# validates :password , :email, presence: true

	# before_validation :ensure_login_has_a_value
	#  protected
	#  	def ensure_login_has_a_value
	#  		if password.nil?
	#  			self.password = email unless email.blank? 
	#  		end
	#  		# binding.pry
	#  	end
	
end
