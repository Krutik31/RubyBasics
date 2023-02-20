# Break Statement
for x in 1..9
    break if x > 5
    print x
end
puts ""



# Next Statement
for x in 1..9
    next if x == 5
    print x
end
puts ""



# Redo Statement
i = false
for x in 1..5
    if x == 3
        puts "The value of x is #{x}"

        if i == false
            puts "Redoing when x = #{x}"
            i = true

            puts "Redo starting"
            redo
            puts "Redo started"
        end
    end
    puts x
end



# Retry Statement
5.times do |i|
    begin
      puts "Iteration #{i}"
  
      raise if i == 2
    rescue
      puts 'In rescue'
  
      i = i + 1
  
      retry
    end
end



# Return Statement
def func
    puts 'before return'
  
    return
    
    puts 'after return'
end
func