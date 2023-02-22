arr = Array(1..10)

puts arr <=> arr                #0
puts arr <=> [0,1,2,3,4,5]      #1
puts [0,1,2,3,4,5] <=> arr      #-1

print "#{arr.push(11)} \n"      #[1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11]

arr.pop
print "#{arr} \n"       #[1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

puts arr.at(1)  #2
puts arr.at(3)  #4

print "#{arr.map {|x| x*2}} \n"     #[2, 4, 6, 8, 10, 12, 14, 16, 18, 20]

print "#{arr & [1,2,3,4,5]}\n"      #[1, 2, 3, 4, 5]

print "#{arr + [1,2,3,4,5]}\n"      #[1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 1, 2, 3, 4, 5]

print "#{arr - [1,2,3,4,5]}\n"      #[6, 7, 8, 9, 10]

arr[11] = 11
print "#{arr}\n"        #[1, 2, 3, 4, 5, 6, 7, 8, 9, 10, nil, 11]
print "#{arr.compact}\n"    #[1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11]

arr.delete(11)
arr.compact!
print "#{arr}\n"    #[1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

print "#{arr.count}\n"  #10

arr[10] = 11
arr.delete_at(10)
print "#{arr}\n"    #[1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

arr[10] = 11
arr.delete_if {|ele| ele>10}
print "#{arr}\n"    #[1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

print "#{arr.dig(2)}\n"  #3

arr.each_index {|index|  puts "#{index} #{arr[index]}" }
# 0 1
# 1 2
# 2 3
# 3 4
# 4 5
# 5 6
# 6 7
# 7 8
# 8 9
# 9 10

print "#{arr.empty?}\n"  #false

arr2 = [1,2,3,4,5,6,7,8,9,10]
print "#{arr.eql?(arr2)}\n"  #true

print "#{arr.fetch(0)}\n"  #1
print "#{arr.fetch(-1)}\n"  #10
print "#{arr.fetch(-3)}\n"  #8

arr[10] = 11
print "#{arr.select! {|element| element <= 10 }}\n"  #[1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

print "#{arr.find_index(5)}\n"  #4

print "#{arr.first}\n"  #1
print "#{arr.last}\n"  #10

arr3 = [[1,2], [3,4], [5,6], [7,8], [9,10]]
print "#{arr.flatten}\n"  #[1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

print "#{arr.include?(5)}\n"  #true
print "#{arr.include?(456)}\n"  #false

print "#{arr.index(5)}\n"  #4

print "#{arr.join}\n"  #12345678910

print "#{arr.length}\n"  #10

print "#{arr.max}\n"  #10

print "#{arr.min}\n"  #1

print "#{arr.minmax}\n"  #[1, 10]

arr.push(11,12)
print "#{arr}\n"    #[1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12]

arr.pop()
arr.pop()
print "#{arr}\n"    #[1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

print "#{arr.replace([1,2,3,4,5])}\n"  #[1, 2, 3, 4, 5]
print "#{arr.replace([1, 2, 3, 4, 5, 6, 7, 8, 9, 10])}\n"   #[1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

print "#{arr.reverse}\n"   #[10, 9, 8, 7, 6, 5, 4, 3, 2, 1]

print "#{arr.rotate}\n"   #[2, 3, 4, 5, 6, 7, 8, 9, 10, 1]
print "#{arr.rotate(3)}\n"   #[4, 5, 6, 7, 8, 9, 10, 1, 2, 3]

print "#{arr.shuffle}\n"   

print "#{arr.size}\n"       #10   

print "#{arr.shuffle.sort}\n"       #[1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

print "#{arr.sum}\n"       #55

arr4 = [[1,2], [3,4], [5,6], [7,8], [9,10]]
print "#{arr4.transpose}\n"  #[[1, 3, 5, 7, 9], [2, 4, 6, 8, 10]]

arr5 = [1,2,3,1,2,5,6,2,4,6]
print "#{arr5.uniq}\n"  #[1, 2, 3, 5, 6, 4]

print "#{arr.values_at(0,5,3,4)}\n"       #[1, 6, 4, 5]
