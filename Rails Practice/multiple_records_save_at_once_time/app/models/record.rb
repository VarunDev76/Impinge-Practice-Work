class Record < ActiveRecord::Base
	validates :value , presence: true 
	belongs_to :user ,counter_cache: true
end