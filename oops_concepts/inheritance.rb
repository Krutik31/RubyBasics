class Parent
	def greet
		puts 'greetings from parent class'
	end

	def walk
    puts 'walking from parent class'
  end
end

class Child < Parent
  def greet
    puts 'greetings from child class'
  end
end

obj = Child.new
obj.greet
obj.walk