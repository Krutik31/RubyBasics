users = ["Krutik", "Dhyey", nil, "Aditya"]

print users
print "\n"

# get the size of the array
print users.length
print "\n"

# Accessing an elements
print users[0]
print "\n"
print users[0,4]
print "\n"

# at keyword
print users.at(-1)
print "\n"

# converting string into array.
str = "My name is Krutik Patel"
print str.split
print "\n"

# first & last methods
print users.first
print "\n"
print users.last
print "\n"

# Insert into array
print users.push("Aman")
print "\n"
print users << "Nil"
print "\n"
print users.insert(2, "Shiva")
print "\n"

# Delete from array
users.pop
print users
print "\n"
users.delete(nil)
print users
print "\n"





# Array Methods.

# new
arr = Array.new(4)
print "#{arr}\n"
arr[2] = "kp"
print "#{arr}\n"

# try_convert: convert object into array
print "#{Array.try_convert([1])}\n"
print "#{Array.try_convert(1)}\n"

# &: Array intersection
print "#{[2,3,4,5] & [1,2,3]}\n"
# +: Array union
print "#{[2,3,4,5] + [1,2,3]}\n"
# -: Array difference
print "#{[2,3,4,5] - [1,2,3]}\n"



# Creating Array of array
arr1 = Array.new(2)
arr1[0] = "k"
arr1[1] = "p"
arr2 = Array.new(2, arr1)
print "#{arr2}\n"

# map : invokes the given block once for each element of an array.
A = [0,1,2,3]
print "#{A.map{|x| x*2}}\n"

# collect : invokes the given block once for each element of an array.
B = [0,1,2,3]
print "#{B.map{|x| x*2}}\n"

# compact : returns a copy of array with all nil elements removed.
print "#{[0,1, nil, 2, nil, 3].compact}\n"

# dig: extract the value of nested array.
K = [[1, [2, 3]]]
print "#{K.dig(0,1,1)}\n"

# empty?: returns true if array is empty
print "#{[].empty?}\n"

# eql?: returns true if two arrays are equal
print "#{[0,1].eql? [0,1]}\n"

# each: executes the given block once for each elements of an array.
P = ["k", "v", "p"]
P.each {|x| print x, "="}
print "\n"

# each_index: same as each but it works for an index.
V = ["k", "v", "p"]
V.each_index {|x| print x, "="}
print "\n"

# fetch
b = [ 11, 22, 33, 44 ]
puts b.fetch(2)

# find_index
puts b.find_index(33)

# include
puts b.include?(33)
puts b.include?(66)

# join
puts b.join("=")

# min & max
i = [0,1,2,3]
puts i.max
puts i.min

# permutation & combination
print "#{i.permutation.to_a}\n"
print "#{i.permutation(2).to_a}\n"
print "#{i.combination(2).to_a}\n"

# reject & select
print "#{i.reject {|x| x>2}}\n"
print "#{i.select {|x| x>2}}\n"

# reverse
print "#{i.reverse}\n"

# slice
print "#{i.slice!(1,2)}\n"

# sort
j = [45,6,32,1,485,78]
print "#{j.sort}\n"

# sum
print "#{j.sum}\n"

# uniq
k = [ "a", "a", "b", "b", "c" ]
print "#{k.uniq}\n"

# zip
m = [ 4, 5, 6 ]
n = [ 7, 8, 9 ]
print "#{[1, 2, 3].zip(m, n)}\n"
print "#{[1, 2].zip(m, n)}\n"
print "#{m.zip([1, 2], [8])}\n"


# Difference between normal methods and bang methods
# bang methods modifies the object every time whenever it will called
# Normal Method
m.reverse
print "#{m}\n"
# Bang Method
m.reverse!
print "#{m}\n"


# Difference between length, size & count
Arr = Array.new(5)
Arr[0] = 1
Arr[1] = 2
Arr[2] = 3
Arr[3] = 3
# size is an alias of length, they have no difference than their names.
puts Arr.length
puts Arr.size

# count fnction counts specific elements in array 
puts Arr.count(3)