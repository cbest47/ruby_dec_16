class MathDojo
	attr_accessor :sum
	def initialize
		@sum = 0
		self
	end

	def add(*num)
		@sum += num.flatten.reduce(:+)
		self
	end

	def subtract(*num)
		@sum -= num.flatten.reduce(:+)
		self
	end

	def result
		puts @sum
	end

end

MathDojo.new.add(2).add(2,5).subtract(3,2).result
MathDojo.new.add(1).add([3,5,7,8],[2,4.3,1.25]).subtract([2,3],[1.1,2.3]).result