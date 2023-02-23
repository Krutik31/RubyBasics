class Interns

	# initialize is not exactly a construstor but it works like a constructor.
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

end

obj = Interns.new("Krutik", "Patel", "RoR")

obj.fullname
obj.technology