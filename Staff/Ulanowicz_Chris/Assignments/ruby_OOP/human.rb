class Human

	attr_accessor :strength, :intelligence, :stealth, :health, :name

	def initialize(name)
		@name = name
		@strength = 3
		@stealth = 3
		@intelligence = 3
		@health = 100
	end
	def attack(target)
		# p target
		# p target.class
		# p target.class.ancestors
		if target.class == Human
			target.health -= 10
			puts "Hit successful"
		else
			self.health -= 5
			puts "Your target wasn't human and bit back!"
		end
		target.display_health
		self.display_health
	end
	def display_health
		puts "#{@name}'s health is #{@health}"
	end
end

Don = Human.new("Don")
John = Human.new("John")

Don.display_health
John.display_health
Don.attack(John)