# ---------------------------------------------- If Elsif Condition Code here ----------------------------------

# x = 1
# puts y = x>2 ? " x is greater than 2 " : (x<=2 and x!=0 ? "x is 1" : " x is not defined ") # if elsif condition in one line code 
	
# ----------------------------------------------- Unless Condition Code Here -------------------------------------

# x = 5
# unless x > 2
# 		puts "x is less than 2"
# 	else
# 		puts "x is greater than 2"
# end 

# ------------------------------------------------ Case Statement Code Here ------------------------------------------

$age = 61
case $age
	when 1..15
		puts " Age of Baby"
	when 16..30
		puts " Age of Youth"
	when 31..60
		puts " Age of Marriage"
	else
		puts "Age of Old"
end