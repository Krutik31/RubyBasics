# Polymorphism is way to calling a same method using different ways i.e using different objects.
# We can achieve this in two ways.

# 1) Using Inheritance:
class Car
  def carSize
    puts "Multiple options for car size"
  end
end

class Micro < Car
  def carSize
    puts "Shorter than every car"
  end
end

class Sedan < Car
  def carSize
    puts "Longer than Hatchback & Micro car"
  end
end

class Limousine < Car
  def carSize
    puts "Longer than every car"
  end
end

# below, we are using different objects for calling the same method, 'carSize'
carObj = Car.new
carObj.carSize

microObj = Micro.new
microObj.carSize

sedanObj = Sedan.new
sedanObj.carSize

limousineObj = Limousine.new
limousineObj.carSize

# OUTPUT:
#   Multiple options for car size
#   Shorter than every car
#   Longer than Hatchback & Micro car
#   Longer than every car



# 2) Using Duck typing:
class Car2
  def carSize2(type)
    type.carSize2
  end
end

class Micro2
  def carSize2
    puts "Shorter than every car"
  end
end

class Sedan2
  def carSize2
    puts "Longer than Hatchback & Micro car"
  end
end

class Limousine2
  def carSize2
    puts "Longer than every car"
  end
end

carObj2 = Car2.new

microObj2 = Micro2.new
sedanObj2 = Sedan2.new
limousineObj2 = Limousine2.new

# Calling same methods using duck typing.
carObj2.carSize2(microObj2)
carObj2.carSize2(sedanObj2)
carObj2.carSize2(limousineObj2)

# OUTPUT:
  # Shorter than every car
  # Longer than Hatchback & Micro car
  # Longer than every car