# module Printer
#   def print_each_element
#     for i in 0...self.length
#       puts self[i]
#     end
#   end
# end

# #in another file can use module like so:

# require_relative 'printer_module'
# class Array
#   include Printer
# end
# class String
#   include Printer
# end
# [1,2,3].print_each_element
# "hello".print_each_element

# module MyEnumerable
#   def my_each
#     for i in self
#     	puts i
#     end
#   end
# end
# class Array
#    include MyEnumerable
# end
# [1,2,3,4].my_each { |i| puts i } #prints 1 2 3 4 in the terminal

# class Project
# 	attr_accessor :name,:description
# 	def initialize (name,description)
#   		@name=name
#   		@description=description
#   	end
#   	def elevator_pitch 
#   		puts "Hey Im #{@name} and I #{@description}"
#   	end
# end
# project1 = Project.new("Project 1", "Description 1")
# puts project1.name #prints out Project 1
# project1.elevator_pitch #prints out 'Project 1, Description 1"

# class MathDojo
# 	def initialize 
# 		@total=0
# 	end
# 	def add(a,b=0)
# 		@total+= (a+b)
# 		puts @total
# 		self
# 	end
# 	def subtract(a,b=0)
# 		@total-= (a+b)
# 		puts @total
# 		self
# 	end
# end

# puts MathDojo.new.add(2).add(2, 5).subtract(3, 2)

class MathDojo
	attr_accessor :result

	def initialize
		@result = 0
	end

	def add(*arg)
		if arg.class == Array
			@result += arg.flatten.reduce(:+)
		else
			@result += arg
		end
		self
	end

	def subtract(*arg)
		if arg.class == Array
			@result -= arg.flatten.reduce(:+)
		else
			@result -= arg
		end
		self
	end
end

puts MathDojo.new.add(2).add(2, 5).subtract(3, 2).result
puts MathDojo.new.add(1).add([3, 5, 7, 8], [2, 4.3, 1.25]).subtract([2,3], [1.1, 2.3]).result