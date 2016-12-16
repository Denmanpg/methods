def whatdidyousay(saying)
	return "#{saying}. #{saying.upcase}"
end

puts "Type Say SOMEHTING!"
saying = gets.chomp

puts whatdidyousay(saying)