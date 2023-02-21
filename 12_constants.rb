# Constants must be initialized by first capital letter

# Constants defined within a class or module can be accessed within that class.
# but Constants defined outside the class or module can be accessed globally.

class Intern
	NAME = "Krutik"
	Surname = "Patel"
	def info
		puts "Name: #{NAME}"
		puts "Surname: #{Surname}"
	end
end

obj = Intern.new()
obj.info
 