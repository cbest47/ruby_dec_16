# Print 1-255

# puts (1..255).to_a

# Pridd odd 1-255

# puts (1..255).find_all { |x| x % 2 == 1}

# Print Sum

# x = 0
# temp = 0
# while x <= 255 do
# 	puts "New Number: #{x} Sum: #{temp}"
# 	x += 1
# 	temp += x
# end

# Iterating through an array

# x = [4, 8, 15, 16, 23, 42]
# x.each {|i| puts i}

#Find Max

# x = [4, 8, 15, 16, 23, 42]
# puts x.max

# Find Average

# x = [4, 8, 15, 16, 23, 42]
# sum = x.inject(:+)
# print sum / x.length

#Array with Odd Numbers

y = (1..255).find_all {|i| i % 2 == 1}
print y

# Greater than Y

