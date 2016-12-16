# class Word < String

# 	def very_long?(string)
# 		if string.length >= 10
# 			puts "true"
# 		end
# 	end
# end

# w = Word.new("pizza")
# w.very_long?("superduperlongword")
# puts w.length

# # f = Word.new
# # f.very_long?("short")

# puts w.class

# puts w.class.superclass

# puts w.class.superclass.superclass

class Person

	attr_accessor :first_name, :last_name, :age, :gender

	def initialize(first_name, last_name, age, gender)


		@first_name = first_name
		@last_name = last_name
		@age = age
		@gender = gender
	end


	def introduction
		puts "#{@first_name} #{@last_name} is a #{@age} year old #{@gender}."
	end
end


p = Person.new("John", "Smith", 34, "male")
p.introduction
puts p.inspect

# class Animals

# 	attr_accessor :name, :species, :diet, :legs, :prey

# 	def initialize(name, species, diet, legs, prey)

# 		@name = name
# 		@species = species
# 		@diet = diet
# 		@legs = legs
# 		@prey = prey
# 	end

# 	def introduction
# 		puts "A #{@name} is a #{@species}. They are of the #{@diet} diet and usually have #{@legs} legs, when uninjured. #{@prey} is their prey!"
# 	end
# end

# a = Animals.new("Lion", "Mammalia", "Carnivora", 4, "Everything/one")
# puts a.name
# a.introduction
# puts a.inspect

class Student < Person

	def intro
		puts "#{@first_name}... a #{@age} year old is learning!"
	end

end

s = Student.new("Forrest", "Austin", 21, "male")
s.intro
s.introduction

class Teacher < Student

	def teaching
		puts "#{@first_name}... a #{age} year old teacher of life!"
	end
end

puts "What is your first name?"
first_name = gets.chomp
puts "What is your last name?"
last_name = gets.chomp
puts "How old are you?"
age = gets.chomp.to_i
puts "What is your gender?"
gender = gets.chomp

t = Teacher.new(first_name, last_name, age, gender)
t.teaching
t.introduction
t.intro


