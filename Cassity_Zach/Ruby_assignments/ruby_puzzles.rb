# 1
# arr = [3,5,1,2,7,9,8,13,25,32]
# sum = 0
# arr.each do |i|
#   sum = sum + i
# end
# puts "the sum is #{sum}"
# print arr.reject {|num| num < 10}

# 2
# arr = ["John", "KB", "Oliver", "Cory", "Matthew", "Christopher"]
# puts arr.shuffle
# print arr.reject {|string| string.length < 5}

#3
# arr = []
# for i in "a".."z"
#   arr.push(i)
# end
# arr.shuffle!
# max = arr[arr.length-1]
# min = arr[0]
# puts "The last letter of the array is #{max}"
# if arr[0] == "a"||arr[0] == "e" || arr[0] == "i" || arr[0] == "o" || arr[0] == "u"
#   print "The first letter is #{min}, which is a Vowel!"
# else
#   print "The first letter of the array is #{min}"
# end

#4
# arr = []
# i = 0
# while i < 10
#   arr.push(rand(55...101))
#   i += 1
# end
# print arr

#5
# arr = []
# i = 0
# while i < 10
#   arr.push(rand(55...101))
#   i += 1
# end
# arr.sort!
# min = arr[0]
# max = arr[arr.length-1]
# puts arr
# puts "the min is #{min}"
# print "the max is #{max}"

# #6
# string = ""
# i = 0
# while i < 5
#   string << (65+rand(26)).chr
#   i += 1
# end
# print string

#7
# string_arr = Array.new
# 10.times { string_arr.push((1..5).map{ rand(65..90).chr }.join) }
# print string_arr
