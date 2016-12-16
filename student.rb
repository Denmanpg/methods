require_relative 'person'

class Student

	attr_accessor :subject

	def initialize(subject)
		@subject = subject
	end

	def person_create
		person = Person.new("Bart", "De Nef", "Male", 33)
		self.intro(person)
	end

	def intro(id)

		puts "#{id.first_name}...#{id.age} year old is learning #{@subject}!"

	end
end

s = Student.new("javascript")
s.person_create