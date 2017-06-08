class User < ApplicationRecord
	has_many :organization  
	has_many :orders , :through => :organization , dependent: :destroy
	accepts_nested_attributes_for :orders, :allow_destroy => true
	attr_accessor :ask_order 
	def self.to_csv
        # binding.pry
      CSV.generate do |csv|
        csv << column_names
        all.each do |product|
          csv << product.attributes.values_at(*column_names)
        end
      end
    end
end
