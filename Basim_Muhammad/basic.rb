# for i in (0..255) do puts i end

# for i in 0..255 do puts i if !(i%2===0) end
# sum=0
# for i in 0..255 do sum+=i and puts "New number is #{i} Sum:#{sum}" end

# x=[1,3,5,7,9,13]

# def iterate_each(array)
# 	for i in array 
# 		puts i
# 	end
# end

# iterate_each (x) 

# def max_finder(array)
# 	max=array[0]
# 	for i in array
# 		if i>max
# 			max=i
# 		end
# 	end
# 	puts max
# end

# max_finder([-3, -5, 0])

# def find_average(array)
# 	sum=0
# 	for i in array
# 		sum+=i
# 	end
# 	avg=sum/array.length
# 	puts avg.to_f
# end

# find_average([10, 10, 5])

# def greater_than(array,y)
# 	count=0
# 	for i in array
# 		if i>y
# 			count+=1
# 		end
# 	end
# 	puts count
# end

# greater_than [1, 3, 5, 7],0

# def square(array)
# 	count=0
# 	for i in array
# 		array[count]=i*i
# 		count+=1
# 	end
# 	puts array
# end

# square [1, 3, 5, 7]

# def remove(array)
# 	count=0
# 	for i in array
# 		if i<0
# 			array[count]=0
# 			count+=1
# 		end
# 	end
# 	puts array
# end

# remove [1, 3, -5, 7]

# def max_min_avg (array)
# 	max=array[0]
# 	min=array[0]
# 	sum=0
# 	for i in array
# 		if i>max
# 			max=i
# 		end
# 		if i<min
# 			min=i
# 		end
# 		sum+=i
# 	end
# 	avg=sum/array.count
# 	puts "Max is #{max}. Min is #{min}. Average is #{avg}"
# end

# max_min_avg [5, 10, 7, -2, 0]

# def shift (array)
# 	for i in array
# 		unless array.index(i)==array.length-1
# 			array.values_at (array.index(i))=array.values_at(array.index(i)-1)
# 		else
# 			array.values_at (array.index(i))=0
# 		end
# 	end
# 	puts array
# end

# # shift [5, 10, 7, -2, 6]

# def replace_negative (array)
# 	count=0
# 	for i in array
# 		if i < 0
# 			array[count]='dojo'
# 			count+=1
# 		end
# 	end
# 	puts array
# end

# replace_negative [1, 5, 10, 7, -2]

# x = [1, 5, 10, 7, -2]
# counter = 0
# x.each { x[counter] = x[counter+=1] }
# x[x.size-1] = 0
# puts x

# # Number to string
# # Write a program that takes an array of numbers and replaces any negative number with the string 'Dojo'. 
# # For example if array x is initially [-1, -3, 2],
# # after your program is done that array should be['Dojo', 'Dojo', 2].
# x = [-1, -3, 2]
# x.each { |x| if x>0 then puts x else puts 'Dojo' end }
# # x.each { |x| x>0 ? (puts x) : (puts 'Dojo') }

# x=[3,5,1,2,7,9,8,13,25,32]
# # sum=0
# # x.each{|i|sum+=i}
# # puts sum
# x.reject!{|i|i<10}
# puts x

# x=['John','KB','Oliver','Cory','Matthew','Christopher']
# # puts x.shuffle

# puts x.reject{|element|element.size<5}

# alphabet=['a','b','s','t','r','g','w','z']
# alphabet.shuffle!
# if ['a','e','i','o','u'].include? alphabet.first
# 	puts 'its a vowel'
# else
# 	puts 'its a consonant'
# end
# array=[]
# for i in (1..10)
# 	array.push(rand (55..100))
# end

# puts array
# array=[]
# for i in 0..9
# string=(0...5).map { (65 + rand(26)).chr }.join
# array.push(string)
# # end
# # print array
# a = {:first_name => "Michael", :last_name => "Choi"}
# b = {:first_name => "John", :last_name => "Supsupin"}
# c = {:first_name => "KB", :last_name => "Tonel"}
# d = {:first_name => "Jessie", :last_name => "De Leon"}
# e = {:first_name => "Jaybee", :last_name => "Balog"}
# names = [a, b, c, d, e]

# for i in names
# 	puts "You got #{names.size} in the 'names' array"
# 	print i[:first_name], i[:last_name]
# end

