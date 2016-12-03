# puts [nil,false].any?
# if any element true, will return true

# puts ['hello','sir'].each{|word|print word," "}
# runs block once over each element-returns initial array

# puts (5...10).collect{|i|i*i}
# runs block over each element once and returns new array

# puts (5...10).map{|i|i*i}
# same as collect

# (1..10).detect { |i| i %5 == 0 and i % 7 == 0 }
# returns first true element

# (1..10).find_all { |i| i % 3 == 0 }
# returns all true elements

#(1..10).reject { |i| i % 3 == 0 }
# returns all false elements

#5.upto(10) { |i| print i, " " }
#=> 5 6 7 8 9 10


