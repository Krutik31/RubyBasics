# Encapsulation is a concept of binding up the data it manipulates & code together.

# Encapsulation can be achieved by declaring all the variables in the class as private and writing public methods in the class to set and get the values of variables.

class Interns

	def initialize(name)
		@name = name
	end

	def name        #getter
		@name
	end

	def name=(n)    #setter
		@name = n
	end

end

obj = Interns.new("Krutik")

puts obj.name           # op: Krutik -> because of getter method other wise it will give us an error if we did not create a getter method.
puts obj.name='Shiva'