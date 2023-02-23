# Ruby does not supports multiple inheritance.
# We can not create a child class that has multiple parent classes.

# but we can use modules to replicate the functionality of multiple inheritance.

module Nameclass
	def name
		puts 'I am in module Nameclass'
	end
end

module Surnameclass
	def surname
		puts 'I am in module Surnameclass'
	end
end

module Technologyclass
	def technology
		puts 'I am in module Technologyclass'
	end
end

class Interns
  include Nameclass
  include Surnameclass
  extend Technologyclass	# 'extend' keyword is used make every methods of this module, a class method. 
end

obj = Interns.new
obj.name
obj.surname
Interns.technology