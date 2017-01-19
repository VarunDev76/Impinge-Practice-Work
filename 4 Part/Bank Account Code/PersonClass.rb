class PersonClass
	attr_accessor :firstName , :lastName ,:accountId , :fetchName
	attr_reader :id
	$innerValues = []
	$innerValues = []
	$pDetails = {}
	@@id = 0
	
	def initialize
	end

	def personDetails
		@@id += 1 
		puts "New ID is Generated :- #{@@id}"

		@id = @@id
		
		puts "Enter your First Name :- "

		@firstName = gets.chomp.to_s.upcase

		puts "Enter your Last Name :- "

		@lastName = gets.chomp.to_s.upcase

		# puts "\t First Name is \"#{@firstName.upcase}\"\n \t Last Name is \"#{@lastName.upcase}\" "

		@accountId = (0..19).to_a.map{|a| rand(100).to_s(19)}.join

		# puts "your Account Number is :- \"#{@accountId} \" "  

		# puts @firstName
	end	


	def search_Name(details)
		# puts details
		details.each do |key|
			print "================================================================================\n\n\n"
			print "\t Values: " + "#{key}\n\n\n"
			@id = key[0]
			puts $innerId << @id
			@slice =  key[1].split(",")
			puts $innerValues << @slice.first

			# print "\t Values: " + "#{values}\n\n\n"
			# $innerValues << "#{key}  #{values.flatten}"
			# puts $innerValues
			# values.each do |name , account|
			# # 	print "\t Id: #{key}\n" 
			# # 	print " \t Name: #{name} \n"
			# # 	print " \t Account: #{account} \n"
			# 	$innerValues << name
			# end
			# $innerValues << values.flatten.uniq
			print "================================================================================\n\n\n"
		end
		# puts $innerValues
		# 	print "================================================================================\n\n\n"

		# 	print "\t  name: #{name.uniq} \n"
		# 	# print "\t  name: #{name} \n"
		# 	# print "\t \n account: #{account} \n"
			
		# 	print "================================================================================\n\n\n"

		# end
			print "================================================================================\n\n\n"
			puts "Search Your Name:=> "
			@fetchName = gets.chomp.to_s.upcase
			
			# if $innerValues.include? "#{@fetchName}"
			# 	puts "String is Found " + $innerValues
			# else
			# 	puts "String Is not"
			# end

			@searchValue = $innerValues.map{ |e|  e.include? @fetchName }
			# @searchValue = $innerValues.any? {|"@fetchName"|}
			 puts @searchValue
			
			# puts " Your Search Ans Is #{@searchValue}"
			# $pDetails.each do |innerName, innerValue|
				# print "================================================================================\n\n\n"
				# puts innerName , "Your Name is " , innerValue, "\n"
			# 	puts $innerValues <<   innerValue.join(" ")
			# end
	end

	def same_User_Open_New_Acoount(id,details,accountNo)
		puts " Your Previous Id is " + id 
		puts " Your Previous Details is " + details 
		puts " Your Previous Acount No is " + accountNo

		@id = id
		$id << @id
		
		puts $id
		
		puts "Enter your First Name :- "

		first = details.split(" ").first
		
		print @firstName = first +"\n"
		

		puts "Enter your Last Name :- "

		last = details.split(" ").last
		
		print @lastName = last +"\n"

		@accountId = (0..19).to_a.map{|a| rand(100).to_s(19)}.join

	end
end

