class User < ApplicationRecord
	has_many :orders , dependent: :destroy
	accepts_nested_attributes_for :orders, :allow_destroy => true
	attr_accessor :ask_order 
end
