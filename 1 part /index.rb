# puts "hello , Ruby! "

# **************************** Variables code here ***********************************

# a = 10
# b = 20
# puts a * (b / a+10)

# ----------------------------- Syntax code here --------------------------------------

# $print = 10
# print <<eoc
# the print is #{$print}
# eoc

# $print = 20
# print <<"eoc";
# the print is #{$print}
# eoc

# $print = 20
# print <<'eoc';
# echo hi there
# echo lol there
# eoc

# ----------------------------- Dynamic Variable's ------------------------------------------

i0 = 1
loop{
	i2 = 1 
	print defined?(i0), "\n"
	print defined?(i1), "\n"
	print defined?(i2), "\n"
	print defined?(i3), "\n"
	break
}
	print defined?(i0), "\n"
	print defined?(i1), "\n"