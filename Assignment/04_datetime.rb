require 'date'

current_date = Date.today

t = Time.new
current_time = "#{t.hour}:#{t.min}:#{t.sec}"

puts "Current Date: #{current_date}"                # 2023-02-22
puts "Current Time: #{current_time}"                # 15:49:24

datetime_30 = DateTime.now + 30

puts "Date & Time after 30 days: #{datetime_30}"    # 2023-03-24T15:49:24+05:30