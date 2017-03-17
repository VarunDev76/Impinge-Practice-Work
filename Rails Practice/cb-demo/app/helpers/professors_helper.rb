module ProfessorsHelper
	def checked(area)
	  @professor.expertise.nil? ? false : @professor.expertise.match(area)
	end
end
