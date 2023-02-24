# Abstraction is a way to hide unnecessary informations and showing only useful parts.
# It can be achieved by three ways.

# Ex: We just have to know that we have to rotate the car keys, we don't have to know that how each part works in an engine.


# ----------------------------------------------Using Modules----------------------------------------------
module CarEngine
  def car_engine_backend
    puts "Doing backend engine stuff to start the car."
  end
end

class Car
  include CarEngine
  def rotate_car_keys
    car_engine_backend
  end
end

obj = Car.new
obj.rotate_car_keys



# ----------------------------------------------Using Classes----------------------------------------------
class CarEngine2
  def car_engine_backend
    puts "Doing backend engine stuff to start the car."
  end
end

class Car2 < CarEngine2
  def rotate_car_keys
    car_engine_backend
  end
end

obj2 = Car2.new
obj2.rotate_car_keys



# ----------------------------------------------Using Access Modifiers----------------------------------------------
class Car3

  public
  def rotate_car_keys
    car_engine_backend
  end

  private
  def car_engine_backend
    puts "Doing backend engine stuff to start the car."
  end

end

obj3 = Car3.new
obj3.rotate_car_keys