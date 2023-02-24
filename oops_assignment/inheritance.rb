# There are four types for inheritance existed.

# ----------------------------------------------Single Inheritance----------------------------------------------
class Car
  def features
    puts "features: name, color, price, model, category"
  end
end

class Name < Car
  def carname(name)
    puts "Name: #{name}"
  end
end

obj = Name.new
obj.features
obj.carname("MG Hector")

# OUTPUT: 
  # features: name, color, price, model, category
  # Name: MG Hector


# ----------------------------------------------Hierarchical Inheritance----------------------------------------------
class Car2
  def features
    puts "features: name, color, price, model, category"
  end
end

class Color2 < Car2
  def carcolor(col)
    puts "Color: #{col}"
  end
end

class Price2 < Car2
  def carprice(price)
    puts "Price: #{price}"
  end
end

colorObj2 = Color2.new
colorObj2.features
colorObj2.carcolor("Black")

# OUTPUT:
  # features: name, color, price, model, category
  # Color: Black

priceObj2 = Price2.new
priceObj2.features
priceObj2.carprice("2500000")

# OUTPUT:
  # features: name, color, price, model, category
  # Price: 2500000


# ----------------------------------------------Multilevel Inheritance----------------------------------------------
class Car3
  def features
    puts "features: name, color, price, model, category"
  end
end

class Name3 < Car3
  def carname(name)
    puts "Name: #{name}"
  end
end

class Color3 < Name3
  def carcolor(col)
    puts "Color: #{col}"
  end
end

class Price3 < Color3
  def carprice(price)
    puts "Price: #{price}"
  end
end

priceObj3 = Price3.new
priceObj3.features
priceObj3.carname("MG Hector")
priceObj3.carcolor("Black")
priceObj3.carprice("2500000")

# OUTPUT
  # features: name, color, price, model, category
  # Name: MG Hector
  # Color: Black
  # Price: 2500000


# ----------------------------------------------Multiple Inheritance----------------------------------------------
module Nameable
  def carname(name)
    puts "Name: #{name}"
  end
end

module Colorable
  def carcolor(col)
    puts "Color: #{col}"
  end
end

module Pricable
  def carprice(price)
    puts "Price: #{price}"
  end
end

class Car4
  include Nameable
  include Colorable
  extend Pricable	# 'extend' keyword is used make every methods of this module, a class method. 
end

obj = Car4.new
obj.carname("Lamborghini")
obj.carcolor("Red")
Car4.carprice("50000000")

# OUTPUT:
  # Name: Lamborghini
  # Color: Red
  # Price: 50000000
