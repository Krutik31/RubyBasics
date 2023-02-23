# Poymorphism are of two types:
    # Method Overriding (Runtime Polymorphism)
    # Method Overloading (Compiletime Polymorphism)

# Method Overloading is not allowed in Ruby.

# Method Overriding can be done by two ways in ruby.

# 1) Using Inheritance : In below example, we are overriding 'greet' method in child class.
class Parent
	def greet
		puts 'greetings from parent class'
	end
end

class Child < Parent
  def greet
    puts 'greetings from child class'
  end
end

obj = Child.new
obj.greet


# 2) Using Duck typing
class Animal
	def four_legs(animal)
		animal.four_legs.to_s
	end
end
  
class Dog < Animal
	def four_legs
		puts '4 legs of dog'
	end
end

class Cat < Animal
	def four_legs
		puts '4 legs of cat'
	end
end

dog = Dog.new
cat = Cat.new

Animal.new.four_legs(dog)
Animal.new.four_legs(cat)