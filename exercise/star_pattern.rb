print "Enter a number: "
n = gets().to_i

1.upto(n) do |x|
    puts '*' * x
end
puts

n.downto(1) do |x|
    puts '*' * x
end