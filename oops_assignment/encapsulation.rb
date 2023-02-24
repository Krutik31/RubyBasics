# Encapsulation means wraping up the data and code together that manipulates the data.


# ----------------------------------------------getter & setter methods----------------------------------------------

class Car

  def initialize(name)
    @carname = name
  end

  def carname         #getter method : we can get the value of carname variable from outside of the class by using an object.
    @carname
  end

  def carname=(n)     #setter method : we can manipulate the value of carname variable from outside of the class by using an object.
    @carname = n
  end

end

carObj = Car.new("MG Hector")

# getting the value
carObj.carname                     

# setting/manipulating the value
carObj.carname="Lamborghini"

# OUTPUT:
  # MG Hector
  # Lamborghini

# ----------------------------------------------attr_reader----------------------------------------------

class Car1

  attr_reader :carname1      # attr_reader is used to getting the value of variable i.e it replaces the getter method.

  def initialize(name1)
    @carname1 = name1
  end

end

carObj1 = Car1.new("MG Hector")

# getting the value
carObj1.carname1

# OUTPUT:
  # MG Hector


# ----------------------------------------------attr_writer----------------------------------------------

class Car2

  attr_writer :carname2      # attr_writer is used to setting/updating the value of variable i.e it replaces the setter method.

  def initialize(name2)
    @carname2 = name2
  end

  def print_carname
    puts @carname2
  end

end

carObj2 = Car2.new("MG Hector")

# setting/manipulating the value
carObj2.carname2="Lamborghini"

carObj2.print_carname

# OUTPUT:
  # Lamborghini


# ----------------------------------------------attr_accessor----------------------------------------------

class Car3

  attr_accessor :carname3      # attr_accessor replaces both getter & setter methods.

  def initialize(name3)
    @carname3 = name3
  end

end

carObj3 = Car3.new("MG Hector")

# getting the value
carObj3.carname3

# setting/manipulating the value
carObj3.carname3="Lamborghini"

# OUTPUT:
  # MG Hector
  # Lamborghini
  