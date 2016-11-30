x = ["challenger", "charger", "avenger", "durango", "dart", "ram", "viper", "daytona"]

print x
puts

puts "at 2 = #{x.at 2}"

puts "at 4 = #{x.at 4}"

puts "fetch 3 = #{x.fetch 3}"

x.delete "daytona"
puts "delete 'daytona' = #{x}"

puts "reversed = #{x.reverse}"

puts "length = #{x.length}"

puts "sorted = #{x.sort}"

puts "sliced at 4 = #{x.slice 4}"

puts "shuffled = #{x.shuffle}"

puts "joined with a hyphen = #{x.join '-'}"

puts "insert 'aspen' at index 5 = #{x.insert(5, 'aspen')}"

y = %w{roadrunner cuda volare gtx}

puts y.values_at(1..3).join"'"