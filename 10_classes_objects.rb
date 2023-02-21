# Creating simple class & object
class Demo
    def func
        puts "Hello Simform"
    end
end

ob = Demo.new
ob.func



# Passing parameters
class Interns
    def info(name, surname)
        @i_name = name
        @i_surname = surname

        puts "Name: #@i_name"
        puts "Surname: #@i_surname"
    end
end

intern_obj = Interns.new
intern_obj.info("Krutik", "Patel")
intern_obj.info("Dhyey", "Sapara")



# Initialize Method
class Interns
    def initialize(name, surname)
        @i_name = name
        @i_surname = surname

        puts "#@i_name #@i_surname"
    end
end

intern_obj1 = Interns.new("Krutik", "Patel")
intern_obj2 = Interns.new("Dhyey", "Sapara")