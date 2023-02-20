# While Loop
x = 1
while x <= 5
    print x
    x = x + 1
end
puts ""



# For Loop
for x in 1..5 do
    print x
end
puts ""

name = ["Krutik", " Patel"]
for x in name do
    print x
end
puts ""



# Do while Loop
x = 1
loop do
    print x
    if x  == 5
        break
    end
    x = x + 1
end
puts ""



# Until Loop
x = 1
until x <= 5 do
    print x
    x = x + 1
end



# Each loop
(1..5).each do |x|
    print x
end
puts ""

[1, 2, 3, 4, 5].each do |index|
    print index
end
puts ""

{Name: 'Krutik', Surname: 'Patel'}.each do |key, value|
    puts "#{key} :  #{value}"
end



# Times Loop
5.times do |x|
    print x
end
puts ""



# Upto Loop
1.upto(5) do |x|
    print x
end
puts ""



# Downto Loop
5.downto(1) do |x|
    print x
end
puts ""



# each_line Loop
"Krutik\nPatel".each_line do|line|
    puts line
end