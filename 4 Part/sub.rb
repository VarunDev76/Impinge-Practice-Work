load 'personClass.rb'
$persons = []
	def show
		puts "1. Addition "
		puts "2. Subtraction "
		puts "3. Division "
		puts "4. Multiplication "
		puts "5. Quit"
		action = gets.chomp.to_i
		takeAction(action)
		# end
		# case object
		# 	when $persons.empty?	
		# 		takeAction(action)
		# 	when $persons
		# end
	end
	def viewAllRecords
		if $persons.size > 0
			$persons.each do |fetch|
				# puts "#{fetch.}"
			end
		end
	end
	def takeAction(action)
		case action
			when 1
				p = PersonClass.new
				$persons.empty? ? p.getValues : p.continueValues($persons.last.to_s)
				add(p.firstValue , p.secondValue)	
			when 2 
				p = PersonClass.new
				$persons.empty? ? p.getValues : p.continueValues($persons.last.to_s)
				sub(p.firstValue , p.secondValue)
			when 3 
				p = PersonClass.new
				$persons.empty? ? p.getValues : p.continueValues($persons.last.to_s)
				div(p.firstValue , p.secondValue)
			when 4 
				p = PersonClass.new
				$persons.empty? ? p.getValues : p.continueValues($persons.last.to_s)
				mul(p.firstValue , p.secondValue)
			when 5 
				exit!
			else
				puts "Sahhi Input Dall Paglle"
			
		end
	end
	def ask
		puts "Do you want to Continue Calclution then Press Y/N \3"	
		@result = gets.chomp.upcase
		if @result == "Y" || @result == "y"
			show
		elsif @result == "N " || @result =="n"
			exit!
		end
	end
	def add(firstValue , secondValue)
		@result = firstValue + secondValue
		puts "Your Addition Result is => #{@result} " 
		$persons << @result
		puts " \t #{$persons.last}"
		ask
	end
	def sub(firstValue , secondValue)
		@result = firstValue - secondValue
		puts "Yours Subtraction result is => #{@result}"
		$persons << @result
		puts " \t #{$persons.last}"
		ask
	end
	def div(firstValue , secondValue )
		@result = firstValue / secondValue
		puts "Yours Division Result is => #{@result}"
		$persons << @result
		puts "\t #{$persons.last}"
		ask
	end
	def mul(firstValue , secondValue)
		@result = firstValue * secondValue
		puts "Yours Multiplication Result is => #{@result} "
		$persons << @result
		puts "\t #{$persons.last}"
		ask
	end
show
puts "Your Finial Calculation is  " + $persons.last.to_s