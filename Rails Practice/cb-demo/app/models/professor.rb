class Professor < ActiveRecord::Base
	before_save do
	  self.expertise.gsub!(/[\[\]\"]/, "") if attribute_present?("expertise")
	end
end
