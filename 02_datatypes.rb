# Ruby is an obeject oriented programming language. everything in ruby is objects and classes.

# Datatypes (int, str, etc.) are classes.
# Variables in ruby are objects.

a = 5
b = "xyz"
c = 5.3
d = :symb
e = true
f = false


puts a.class    # Integer

puts b.class    # String

puts c.class    # Float

puts d.class    # Symbol

puts e.class    # TrueClass

puts f.class    # FalseClass





# Strings are mutable.
a = "er"
puts a.object_id    #60
b = "er"
puts b.object_id    #80
c = "er"
puts c.object_id    #100

# Symbols are immutable
a = :er
puts a.object_id    #1089948
b = :er
puts b.object_id    #1089948
c = :er
puts c.object_id    #1089948



