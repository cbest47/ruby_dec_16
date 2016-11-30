x = [3,5,1,2,7,9,8,13,25,32]
y = 10
puts x.reduce(:+)
print x.reject{ |i| i < y}
puts

z = ["John", "KB", "Oliver", "Cory", "Matthew", "Christopher"]
z.shuffle.each{|name| puts name}
print z.reject{|name| name.size < 5}
puts

v = ("a".."z").to_a
u = v.shuffle
puts u.last
puts u.first
if ["a","e","i","o","u"].include?(u.first)
	puts u.first + " is a vowel"
end

t = []
10.times { t.push rand(55..100)}
print t
puts
puts t.min
puts t.max
print t.sort
puts
puts t.sort.first
puts t.sort.last

s = ""
5.times { s<<(65 + rand(26)).chr }
puts s


p = []
for i in (1..10)
	r = ""
	5.times { r << (65 + rand(26)).chr }
	p << r
end
print p
puts

