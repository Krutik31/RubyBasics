class Car

    NO_OF_WHEELS = 4

    FUELTYPES = {
        type1: "Petrol",
        type2: "Diesel",
        type3: "CNG"
    }

    def initialize
        @color = "Red"
    end

    # 02
    def gst_calculator(price)
        return price + (price*0.18)
    end

    # 03
    def car_color
        color = "White"
    end

    def check_variable_scope
        puts "#@color : this value is from instance variable"
        
        begin
            puts color
        rescue NameError
            puts "Error due to use of a local variable outside of it's scope"
        end
    end

    # 04
    def get_wheels
        puts NO_OF_WHEELS
    end

    # 05
    def print_color(col)
        puts "the color of the car is #{col}"
    end

    # 06
    def get_fuel(type)
        puts "The type of fuel inside a car : #{FUELTYPES[type]}"
    end

end


# 01: Create a Class named Car
carObj = Car.new

# 02: Create a method that takes an argument of price and returns the integer value of the price plus 18% GST of that price
print "Enter the car price: "
car_price = gets.chomp.to_i
puts "Price with included 18% GST: #{carObj.gst_calculator(car_price)}"

# 03: Create a method and create an instance and local variable with the same name color and test the scope of both variable
carObj.car_color
carObj.check_variable_scope

# 04: Create a constant within the class named no of wheels, set value 4, and use it in a different method
carObj.get_wheels

# 05: Create a method to take an argument for the color and print string: the color of the car is ___( fill in the color name here from the argument)
carObj.print_color("Black")

# 06: Create an enum for fuel type and use it with any method
carObj.get_fuel(:type1)