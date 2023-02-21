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

# Getting the array of keys and values
R = Hash["k" => 10, "p" => 20]
print "#{R.keys} \n"
print "#{R.values} \n"

# Getting the length of Hash
M = Hash["k" => 10, "p" => 20]
puts M.length

# Converting hashes into nested array
G = {"k" => 10, "p" => 20}
print "#{G.to_a} \n"


info = {"name" => "Krutik", "surname" => "Patel"}

# adding new items
info["git"] = 82
puts info

# merge
extrainfo = {"Organization" => "Simform"}
puts info.merge(extrainfo)

# Multi Values of a single Hash key
interns = {
    "names" => ["Krutik", "Dhyey", "Aditya"]
}
puts interns["names"][1]

# delete_if
info.delete_if {|key, value| key == "surname"}
puts info

# dig
information = {"subjects" => {"ruby" => {"marks" => 90}, "git" => {"marks" => 82}}}
puts information.dig("subjects", "ruby", "marks")

# flatten
puts information.flatten

# has_key & has_value
puts info.has_key?("name")
puts info.has_value?("krutik")

# slice
info["surname"] = "Patel"
puts info.slice("surname", "git")

# transform_keys
puts info.transform_keys {|k| "** #{k} **"}
puts info.transform_values {|v| "** #{v} **"}

# size
puts info.size
info.delete("git")
puts info.size

# value?, values & value_at
puts info.value?("Patel")
print "#{info.values}\n"
puts "#{info.values_at("name", "surname")}\n"