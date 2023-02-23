class Interns

	def initialize(name, surname)
		@name = name
		@surname = surname
	end

	def fullname
		puts "Fullname: #@name #@surname"
	end

	def technology
		puts "Technology stack is Ruby on Rails"
	end

end

# allocate is used to creating an object of class without calling initialize method of that class.
obj = Interns.allocate

obj.technology

obj.fullname    # It will not print name & surname as initialize method has not called.