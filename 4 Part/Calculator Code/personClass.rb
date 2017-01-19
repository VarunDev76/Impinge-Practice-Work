class PersonClass
	attr_accessor :firstValue , :secondValue
	attr_reader :id
	@@id = 0

	def initialize
		@@id +=1
	end
	def getValues	
		# @@id +=1
		puts "Id :-  #{@@id}"  
		puts "Enter your First Value :- "
		@firstValue = gets.chomp.to_i
		puts "Enter Your Second Value : -"
		@secondValue = gets.chomp.to_i
	end
	def continueValues(id,num)
		# @@id +=1
		puts "New ID : #{@@id}"
		# puts "num: "+num
		puts "Enter your First Value :- " + num
		@firstValue = num.to_i
		puts "Enter your Second Value :- "
		@secondValue = gets.chomp.to_i
	end
end