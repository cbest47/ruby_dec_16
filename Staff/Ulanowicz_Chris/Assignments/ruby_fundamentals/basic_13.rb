puts "\nPrint 1-255"
1.upto(255) { |i| print i, " "}

puts "\nPrint odd numbers between 1-255"
1.upto(255) { |i| print i, " " if i % 2 != 0}

puts "\nPrint Sum"
sum = 0
0.upto(255) { |i| puts "New number: #{i} Sum: #{sum+=i}"}

puts "Iterating through an array"
[1,3,5,7,9,13].each { |num| print num, " "}

puts "\nFind Max"
print [5,-1,0,3,-8,12].max

puts "\nGet Average"
w = [2,5,8,10,12,11]
puts w.reduce(:+)/w.length

puts "Array with Odd numbers between 1 to 255"
print y = (1..255).reject{ |i| i%2==0}

puts "\nGreater Than Y"
v = [5,-1,0,3,-8,12]
Y = 2
count = 0
v.each{ |i| count += 1 if i > Y}
print count

puts "\nSquare the values"
z = [2,6,3,9,5,4]
print z.collect { |i| i*i}

puts "\nEliminate Negative numbers"
r = [5,-1,0,3,-8,12]
print r.collect{ |i| if i>=0 then i else 0 end}

puts "\nMax, Min, and Average"
t = [2,5,8,10,12,11]
puts t.max, t.min, t.reduce(:+)/t.length

puts "Shifting the values in the array"
p = [1,5,10,7,-2,3]
print p.slice(p[0],p[1]).push(0)

puts "\nNumber to string"
u = [5,-1,0,3,-8,12]
print u.collect{ |i| if i>=0 then i else "Dojo" end}
puts