
def addem(var1, var2)
	return var1 + var2
end

def asknumber
	puts "What number do you want?"
	number = gets.chomp.to_i
	return number
end

var1 = asknumber
puts addem(1,2)
puts addem(-4,5)