color = ['red', 'green', 'blue', 'black', 'white']

print "#{color.push("silver")} \n"      #["red", "green", "blue", "black", "white", "silver"] 

color.pop
print "#{color} \n"     #["red", "green", "blue", "black", "white"] 

puts color.at(1)  #green
puts color.at(3)  #black

print "#{color.map {|x| x+" color"}} \n"     #["red color", "green color", "blue color", "black color", "white color"] 

print "#{color & ["red", "green", "blue"]}\n"      #["red", "green", "blue"]

print "#{color + ["red", "green", "blue"]}\n"      #["red", "green", "blue", "black", "white", "red", "green", "blue"]

print "#{color - ["red", "green", "blue"]}\n"      #["black", "white"]

color[11] = "silver"
print "#{color}\n"        #["red", "green", "blue", "black", "white", nil, nil, nil, nil, nil, nil, "silver"]
print "#{color.compact}\n"      #["red", "green", "blue", "black", "white", "silver"] 

color.delete("silver")
color.compact!
print "#{color}\n"     #["red", "green", "blue", "black", "white"] 

print "#{color.count}\n"  #5

color[5] = "silver"
color.delete_at(5)
print "#{color}\n"     #["red", "green", "blue", "black", "white"] 

color[5] = "silver"
color.delete_if {|col| col == 'silver'}
print "#{color}\n"     #["red", "green", "blue", "black", "white"]

print "#{color.dig(2)}\n"  #blue

color.each_index {|index|  puts "#{index} #{color[index]}" }
# 0 red
# 1 green
# 2 blue
# 3 black
# 4 white

print "#{color.empty?}\n"  #false

color2 = ['red', 'green', 'blue', 'black', 'white']
print "#{color.eql?(color2)}\n"  #true

print "#{color.fetch(0)}\n"  #red
print "#{color.fetch(-1)}\n"  #white
print "#{color.fetch(-3)}\n"  #blue

color[5] = 'silver'
print "#{color.select! {|col| col != 'silver' }}\n"     #["red", "green", "blue", "black", "white"]

print "#{color.first}\n"  #red

print "#{color.last}\n"  #white

color3 = [["red", "green"], "blue", ["black", "white"]]
print "#{color3.flatten}\n"     #["red", "green", "blue", "black", "white"]

print "#{color.join}\n"  #redgreenblueblackwhite

print "#{color.length}\n"  #5

print "#{color.max}\n"  #white

print "#{color.min}\n"  #black

print "#{color.minmax}\n"  #["black", "white"]

color.push('silver', 'golden')
print "#{color}\n"    #["red", "green", "blue", "black", "white", "silver", "golden"]

color.pop()
color.pop()
print "#{color}\n"    #["red", "green", "blue", "black", "white"]

print "#{color.replace(["black", "white"])}\n"  #["black", "white"]
print "#{color.replace(['red', 'green', 'blue', 'black', 'white'])}\n"   #['red', 'green', 'blue', 'black', 'white']

print "#{color.reverse}\n"   #["white", "black", "blue", "green", "red"]

print "#{color.rotate}\n"   #["green", "blue", "black", "white", "red"]
print "#{color.rotate(3)}\n"   #["black", "white", "red", "green", "blue"]

print "#{color.shuffle}\n"   

print "#{color.size}\n"       #5

print "#{color.sort}\n"       #["black", "blue", "green", "red", "white"]

color4 = [["red", "green"], ["blue", "silver"], ["black", "white"]]
print "#{color4.transpose}\n"  #[["red", "blue", "black"], ["green", "silver", "white"]]

color5 = ['red', 'blue', 'green', 'blue', 'black', 'red', 'white']
print "#{color5.uniq}\n"  #["red", "blue", "green", "black", "white"]

print "#{color.values_at(0,2,4)}\n"       #["red", "blue", "white"]