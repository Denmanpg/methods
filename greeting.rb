def greeting(name, age)
	puts "Hello, #{name}! Ooooo #{age}! You are so old and wise!"
end

# greeting("Natasha", 34)
# greeting("Patricia", 25)
# greeting("Bart", 30)

#The Three Amigos Solution brought to you by: Jessica, Nic and Patricia!
def tipcalc(subtotal)
	tip = (0.2 * subtotal.to_f)
	total = (subtotal + tip)
	return tip = "%.2f" % tip, total.round(2)
end
puts "What was your total bill?"
subtotal = gets.chomp.to_f
tip, total = tipcalc(subtotal.to_f)
puts "An appropriate and appreciated 20% tip on #{subtotal.to_f} would be $#{tip} bringing your total bill to #{total}!"

