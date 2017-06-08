class Order < ApplicationRecord
	has_many :organization 
	has_many :user , through: :organization
end
