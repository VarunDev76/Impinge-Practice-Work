class Comment < ActiveRecord::Base
	validates :comment , presence: true 
	belongs_to :post , :counter_cache => true
end