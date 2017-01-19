load 'PersonClass.rb'
$personsId = {}
$persons = {}
$merge ={}
$accounts = {}
$allData = []

	def show
		puts "Press 1. For New Account "		
		# puts "Press 2. For Same User Open New Account "		
		puts "Press 2. For See Your Account "		
		puts "Press 3. For View All Entry In Data "		
		puts "Press 4. Quit "
		@action = gets.chomp.to_i
		takeAction(@action)		
	end

	def takeAction(action)
		case action
			when 1
				p = PersonClass.new
				p.personDetails 
				newAccount(p.id,p.firstName,p.lastName,p.accountId)
			when 2
				p = PersonClass.new
				p.search_Name( $allData.last)
				# fetch_by_id(p.fetchName)
			
			when 3

			when 4
				exit!
			else
				puts "Sahhi value putt kar Putr"
		end
	end

	def ask_to_continue
		puts " Do You Continue the Services Please Press Y for Yes Press N for No:> "
		@action = gets.chomp.to_s
		if @action === "Y" || @action === "y" 
			show	
		elsif @action === "N" || @action ==="n"
			exit!	
		else
			puts " Please Try Again \n"
			ask_to_continue
		end
	end

	def newAccount(id,firstName, lastName, accountId)
		@resultId = id
		@resultName = " #{firstName} #{lastName} "
		@resultAccount = accountId
		puts " Welecome to Open New Account => #{@resultId} "
		puts " Welecome to Open New Account => #{@resultName} "
		puts " Your Account Number is => \t \"#{@resultAccount}\" "
		@merge = @resultName +", " + @resultAccount
		$persons[@resultId]=  @merge
		$allData << $persons

		# puts $
		# $accounts << @resultAccount
		ask_to_continue
	end

	def fetch_by_id(fname)
		# puts fname
		# $persons.select{|s| s.include? fname}
		
	end

show
puts "Yours Entries is #{$persons.length} "