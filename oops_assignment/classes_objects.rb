# Creating a class named 'Car'.
class Car

  # Initialized multiple instance variables 
  def initialize(name, color, price, model, category)
    @name = name
    @color = color
    @price = price
    @model = model
    @category = category
  end

  # Defining multiple instance methods
  def get_name
    @name
  end

  def get_color
    @color
  end

  def get_price
    @price
  end

  def get_model
    @model
  end

  def get_category
    @category
  end

end


# Creating two objects for two examples
carObj1 = Car.new("MG Hector", "Black", "2500000", "2023", "SUV")

carObj2 = Car.new("Lamborghini", "Red", "50000000", "2023", "Sports car")


# Accessing various instance methods by objects.
puts "Informations about #{carObj1.get_name}:"
puts "  Color : #{carObj1.get_color}"
puts "  Price :  #{carObj1.get_price}"
puts "  Model : #{carObj1.get_model}"
puts "  Category : #{carObj1.get_category}"

puts "\n"

puts "Informations about #{carObj2.get_name}:"
puts "  Color : #{carObj2.get_color}"
puts "  Price :  #{carObj2.get_price}"
puts "  Model : #{carObj2.get_model}"
puts "  Category : #{carObj2.get_category}"


# OUTPUT:

  # Informations about MG Hector:
  #   Color : Black
  #   Price :  2500000
  #   Model : 2023
  #   Category : SUV

  # Informations about Lamborghini:
  #   Color : Red
  #   Price :  50000000
  #   Model : 2023
  #   Category : Sports car
