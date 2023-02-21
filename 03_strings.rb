msg = "ruby string practice by krutik patel"

# Accessing string
puts msg[5]
puts msg[0,5]
puts msg[-5]

# print msg length
puts msg.length

# replacing variables with values inside string literals
var = "Krutik Patel"
puts "My name is #{var}" 

# String Concatination
v1 = "Krutik"
v2 = "Patel"
puts v1 + " " + v2

str = "I am"
str << " Krutik"
str << " Patel"
puts str



name = "Krutik Patel"

# empty?
puts name.empty?    #false

# include?
puts name.include?("Krutik")    #true

# index
puts name.index("tik")  #3

# rjust & ljust
puts name.rjust(15, "0")    #Krutik Patel000
puts name.ljust(15, "0")    #000Krutik Patel

# upcase & downcase
puts name.upcase    #KRUTIK PATEL
puts name.downcase  #krutik patel

# strip, lstrip, rstrip
nm = "   k p   "
puts nm.strip   #'k p'
puts nm.rstrip  #'   k p'
puts nm.lstrip  #'k p   '

# start_with? and end_with? 
puts name.start_with?("Krutik") #true
puts name.end_with?("Sapara") #false
puts name.delete_suffix("Patel") #Krutik
puts name.delete_prefix("Krutik") # Patel

# split
print "#{name.split}\n"     #["Krutik", "Patel"]

# each_char
"kp".each_char {|b| puts b+"-"}     #k-p- 

# chars
print "#{name.chars}\n"   #["K", "r", "u", "t", "i", "k", " ", "P", "a", "t", "e", "l"]

# multiline strings
puts %Q(aaa
bbb
ccc
ddd)

# replace text inside a string
puts name.gsub("Krutik", "Shiv")    #Shiv Patel

# capitalize
puts "krutik".capitalize    #Krutik Patel
puts "KRUTIK".capitalize    #Krutik Patel
puts "123krUtIK".capitalize    #Krutik Patel

# casecmp
puts "krutik".casecmp("KRUTIK")     #0
puts "krutik".casecmp("KRUTIKpAteL")    #-1
puts "krutikpatel".casecmp("KRUTIK")    #1
puts "krutik".casecmp("KrUtiK")     #0

# delete
puts name.delete 'K'    #rutik Patel

# count
puts name.count "t"     # 2

# insert
puts name.insert(6, " V.")

# prepend
puts name.prepend("Name: ")

# replace
puts name.replace "Shiva"