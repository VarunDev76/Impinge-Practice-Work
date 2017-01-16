

# for i in 1..20
# 	puts "value of local variable is #{i}"
# end

# (0..5).each do |i|
# 	puts i
# end

for i in 1..5
	if i < 2 then
		# break
		next
	end
	puts "Values #{i}"
end