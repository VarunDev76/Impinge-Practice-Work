class Userdetail < ActiveRecord::Base
	# belongs_to :user, foreign_key:"user_id" ,dependent: :destroy
	#validates :user_id , presence: true , numericality: { only_interger: true } , format: { with: /\A\d+\Z/ } 
	belongs_to :user
end
