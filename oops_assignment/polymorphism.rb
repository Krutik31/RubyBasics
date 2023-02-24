# Polymorphism is way to calling a same method using different ways i.e using different objects.
# We can achieve this in two ways.

# 1) Using Inheritance:
class Car
  def carsize
    puts "Multiple options for car size"
  end
end

class Micro < Car
  def carsize
    puts "Shorter than every car"
  end
end

class Sedan < Car
  def carsize
    puts "Longer than Hatchback & Micro car"
  end
end

class Limousine < Car
  def carsize
    puts "Longer than every car"
  end
end

# below, we are using different objects for calling the same method, 'carsize'
carObj = Car.new
carObj.carsize

microObj = Micro.new
microObj.carsize

sedanObj = Sedan.new
sedanObj.carsize

limousineObj = Limousine.new
limousineObj.carsize

# OUTPUT:
#   Multiple options for car size
#   Shorter than every car
#   Longer than Hatchback & Micro car
#   Longer than every car



# 2) Using Duck typing:
class Car2
  def carsize2(type)
    type.carsize2
  end
end

class Micro2
  def carsize2
    puts "Shorter than every car"
  end
end

class Sedan2
  def carsize2
    puts "Longer than Hatchback & Micro car"
  end
end

class Limousine2
  def carsize2
    puts "Longer than every car"
  end
end

carObj2 = Car2.new

microObj2 = Micro2.new
sedanObj2 = Sedan2.new
limousineObj2 = Limousine2.new

# Calling same methods using duck typing.
carObj2.carsize2(microObj2)
carObj2.carsize2(sedanObj2)
carObj2.carsize2(limousineObj2)

# OUTPUT:
  # Shorter than every car
  # Longer than Hatchback & Micro car
  # Longer than every car
  