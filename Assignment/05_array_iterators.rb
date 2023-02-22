numbers = [1,2,3,4,5,6,7,8,9,10]
colors = ['red', 'green', 'blue', 'black', 'white']



# ------------------------------each iterator------------------------------

numbers.each {|num| puts num*2}
# 2
# 4
# 6
# 8
# 10
# 12
# 14
# 16
# 18
# 20

colors.each {|col| puts "#{col} color"}
# red color
# green color
# blue color
# black color
# white color



# ------------------------------reverse_each iterator------------------------------

numbers.reverse_each {|num| puts num*2}
# 20
# 18
# 16
# 14
# 12
# 10
# 8
# 6
# 4
# 2

colors.reverse_each {|col| puts "#{col} color"}
# white color
# black color
# blue color
# green color
# red color



# ------------------------------each_index iterator------------------------------

numbers.each_index {|ind| puts "#{ind}: #{numbers[ind]}"}
# 0: 1
# 1: 2
# 2: 3
# 3: 4
# 4: 5
# 5: 6
# 6: 7
# 7: 8
# 8: 9
# 9: 10

colors.each_index {|ind| puts "#{ind} -> #{colors[ind]}"}
# 0 -> red
# 1 -> green
# 2 -> blue
# 3 -> black
# 4 -> white



# ------------------------------cycle iterator------------------------------

numbers2 = [1,2,3]
numbers2.cycle(2) {|num| puts "#{num}*2 = #{num*2}"}
# 1*2 = 2
# 2*2 = 4
# 3*2 = 6
# 1*2 = 2
# 2*2 = 4
# 3*2 = 6

colors.cycle(2) {|col| puts "#{col} color"}
# red color
# green color
# blue color
# black color
# white color
# red color
# green color
# blue color
# black color
# white color



# ------------------------------combination iterator------------------------------

numbers.combination(2) {|comb| print comb}
# [1, 2][1, 3][1, 4][1, 5][1, 6][1, 7][1, 8][1, 9][1, 10][2, 3][2, 4][2, 5][2, 6][2, 7][2, 8][2, 9][2, 10][3, 4][3, 5][3, 6][3, 7][3, 8][3, 9][3, 10][4, 5][4, 6][4, 7][4, 8][4, 9][4, 10][5, 6][5, 7][5, 8][5, 9][5, 10][6, 7][6, 8][6, 9][6, 10][7, 8][7, 9][7, 10][8, 9][8, 10][9, 10]

colors.combination(2) {|comb| print comb}
# ["red", "green"]["red", "blue"]["red", "black"]["red", "white"]["green", "blue"]["green", "black"]["green", "white"]["blue", "black"]["blue", "white"]["black", "white"]



# ------------------------------permutation iterator------------------------------

numbers.permutation(2) {|perm| print perm}
# [1, 2][1, 3][1, 4][1, 5][1, 6][1, 7][1, 8][1, 9][1, 10][2, 1][2, 3][2, 4][2, 5][2, 6][2, 7][2, 8][2, 9][2, 10][3, 1][3, 2][3, 4][3, 5][3, 6][3, 7][3, 8][3, 9][3, 10][4, 1][4, 2][4, 3][4, 5][4, 6][4, 7][4, 8][4, 9][4, 10][5, 1][5, 2][5, 3][5, 4][5, 6][5, 7][5, 8][5, 9][5, 10][6, 1][6, 2][6, 3][6, 4][6, 5][6, 7][6, 8][6, 9][6, 10][7, 1][7, 2][7, 3][7, 4][7, 5][7, 6][7, 8][7, 9][7, 10][8, 1][8, 2][8, 3][8, 4][8, 5][8, 6][8, 7][8, 9][8, 10][9, 1][9, 2][9, 3][9, 4][9, 5][9, 6][9, 7][9, 8][9, 10][10, 1][10, 2][10, 3][10, 4][10, 5][10, 6][10, 7][10, 8][10, 9]

colors.permutation(2) {|perm| print perm}
# ["red", "green"]["red", "blue"]["red", "black"]["red", "white"]["green", "red"]["green", "blue"]["green", "black"]["green", "white"]["blue", "red"]["blue", "green"]["blue", "black"]["blue", "white"]["black", "red"]["black", "green"]["black", "blue"]["black", "white"]["white", "red"]["white", "green"]["white", "blue"]["white", "black"]

