class Order < ActiveRecord::Base
	validates :order_item , :payment , presence: true
	belongs_to :user 
end
