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