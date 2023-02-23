# attr_reader, attr_writer & attr_accessor are the methods of encapsulation provided by Ruby.

# attr_reader:
class Interns

  attr_reader :name       # this feature helps us same as getter method.

	def initialize(name)
		@name = name
	end

end

obj = Interns.new("Krutik - reader")

puts obj.name	# this will give an error if we remove the getter method i.e attr_reader




# attr_writer:
class Interns2

	attr_reader :name2			# this feature helps us same as setter method.
  attr_writer :name2       	# this feature helps us same as setter method.

	def initialize(name2)
		@name2 = name2
	end

end

obj2 = Interns2.new("Krutik - writer")

puts obj2.name2	
puts obj2.name2='Shiva - writer'




# attr_accessor:
class Interns3

	attr_accessor :name3			# this feature is a combination of getter & setter methods (attr_reader + attr_writer).

	def initialize(name3)
		@name3 = name3
	end

end

obj3 = Interns3.new("Krutik - writer")

puts obj3.name3	
puts obj3.name3='Shiva - writer'