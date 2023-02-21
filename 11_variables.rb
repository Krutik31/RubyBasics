# Local Variable : Always starts with lower case or an underscore
var = 45
strvar = "kp"
_Name = "Krutik Patel"
puts var
puts _Name



# Instance Variable : It is different across difference objects 
class Intern
	def initialize(name)
		@i_name = name
	end

	def details()
		puts "Name: #@i_name"
	end
end

i1 = Intern.new("Krutik")
i1.details()
i2 = Intern.new("Dhyey")
i2.details()



# Class Variable : It is available across different objects
class Intern
	def initialize(name)
		@i_name = name
		@@entries = 0
	end

	def details()
		puts "Name: #@i_name"
	end

	def total_interns()
		@@entries = @@entries + 1
		puts "No. of interns: #@@entries"
	end
end

i1 = Intern.new("Krutik")
i2 = Intern.new("Dhyey")
i1.details()
i1.total_interns()
i2.details()
i1.total_interns()



# Global Variable : It's scope is global. it is not bounded by any scope.
$globalvar = 45
class Class1
 def print_global
 puts "Global variable in Class1 is #$globalvar"
 end
end
class Class2
 def print_global
 puts "Global variable in Class2 is #$globalvar"
 end
end
class1obj = Class1.new
class1obj.print_global
class2obj = Class2.new
class2obj.print_global
puts "Global variable outside the classes is #$globalvar"