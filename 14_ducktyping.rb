# Duck Typing is a feature of Ruby Programming

# Ruby is duck typed language.
# It does not care that you have to specify the class.

def reverse_day(item)
    item.reverse
end

puts reverse_day([1, 2, 3])
puts reverse_day('neetesh_gupta')
puts reverse_day("12345")
