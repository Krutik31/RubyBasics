# Monkey Patching is a feature of Ruby Programming.
# Monkey Patching is a process of modifying the existing classes and it's methods. Ruby allows us to do so.

arr = [1,2,3]
puts arr.reverse

class Array
    def reverse
      'I will not reverse'
    end
end
  
puts arr.reverse