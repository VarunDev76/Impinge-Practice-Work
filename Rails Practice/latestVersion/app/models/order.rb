class Order < ApplicationRecord
	validates :city, presence: true
end
