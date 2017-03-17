class User < ActiveRecord::Base
	validates :name , presence: true , uniqueness: true
	has_many :records , dependent: :destroy

	accepts_nested_attributes_for :records
end
