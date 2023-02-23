# Class method: 'self' is used to create a class method. these methods are invoked on class itself, rather than on an object of the class.
class Interns

	def initialize(name, surname, techstack)
		@name = name
		@surname = surname
		@techstack = techstack
	end

	def fullname
		puts "Fullname: #@name #@surname"
	end

	def technology
		puts "Technology Stack: #@techstack"
	end

	def self.name
		puts "From Class Method"
	end

end


obj = Interns.new("Krutik", "Patel", "RoR")

# Calling an instance methods
obj.fullname
obj.technology

# Calling class method : they are called directly by class. we do not have to create an object for that
Interns.name