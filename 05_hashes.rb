# Creating new hash
k = Hash.new("Kp")
puts k[0]   #Kp
puts k[56]  #Kp
k[3] = "Pk"
puts k[3]   #Pk


# Another way to create hashes
H = Hash["k" => 10, "p" => 20]
puts H      #{"k"=>10, "p"=>20}
puts H['p'] #20
puts H[5]   #nil
H[3] = "Pk"
puts H[3]   #Pk
puts H      #{"k"=>10, "p"=>20, 3=>"Pk"}

# try_convert : converts objects into hashes & returns nil if object can not convert into Hash.
puts Hash.try_convert({0=>"k", 1=>"p"})
puts Hash.try_convert('0=>"k", 1=>"p"')

# clear : it clears entire Hash.
J = Hash["k" => 10, "p" => 20]
puts J.clear

# Remove keys from Hash.
P = Hash["k" => 10, "p" => 20]
P.delete("k")
puts P

# invert : convert keys into values and vice versa
L = Hash["k" => 10, "p" => 20]
puts L.invert()

# Getting the array of keys
R = Hash["k" => 10, "p" => 20]
print "#{R.keys} \n"

# Getting the length of Hash
M = Hash["k" => 10, "p" => 20]
puts M.length

# Converting hashes into nested array
G = {"k" => 10, "p" => 20}
print "#{G.to_a} \n"