# ------------------------------------------ Array Example --------------------------------------------

# ary = [ "fired " , 10 , " grill " , 3.14 ]
# ary.each do |a|
# 	print a
# end

# ------------------------------------------- Hash Example --------------------------------------------------

# hsh = colors = {"red" => "#f00" , "green" => "#0f0" , "blue" => "#00f"}
# hsh.each do |key , value|
# 	print key ,  " color code is " , value	,"\n"
# end 

hsh = {}
abc = {}
dec = {}
abc["varun"] = 10
hsh["a"] = abc

# abc.merge!(hsh) do |key, values|
# 	puts key , "  " , values	
# end
puts hsh

# -------------------------------------------- Range set ----------------------------------------------------

# (10..100).each do |lists|
# 	print lists , " "
# end

# ("bar"..."bbz").each do |lists|
# 	print lists, " "
# end
# puts "varun".tr('a','u')