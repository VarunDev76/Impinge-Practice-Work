class PersonClass
	attr_accessor :firstValue , :secondValue
	def getValues	
		puts "Enter your First Value :- "
		@firstValue = gets.chomp.to_i
		puts "Enter Your Second Value : -"
		@secondValue = gets.chomp.to_i
	end
	def continueValues(num)
		# puts "num: "+num
		puts "Enter your First Value :- " + num
		@firstValue = num.to_i
		puts "Enter your Second Value :- "
		@secondValue = gets.chomp.to_i
	end
end