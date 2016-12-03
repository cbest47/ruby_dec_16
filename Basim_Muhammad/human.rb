class Human
	attr_accessor :strength
	attr_accessor :intelligence
	attr_accessor :stealth
	attr_accessor :health

	def initialize 
		@strength=3
		@intelligence=3
		@stealth=3
		@health=100
	end

	def attack(enemy)
		if enemy.instance_of?(Human)
			enemy.health-=10
			puts 'You decreased enemy health by 5'
		else
			puts 'You cannot fight this foe'
		end
	end

end

class Wizard<Human
	def initialize 
		super
		@intelligence=25
		@health=50
	end

	def heal
		@health+=10
		puts 'health restored +10'
	end

	def fireball(enemy)
		enemy.health-=20
		p 'enemy health decreased by 20'
	end
end

class Ninja<Human
	def initialize 
		super
		@stealth=175
	end

	def steal(enemy)
		enemy.health-=5
		puts 'enemy health decreased by 5'
		@health+=5
		puts 'health increased by 5'
	end

	def get_away
		@health-=15
		puts 'This maneuver cost 15 health'
	end
end

class Samurai<Human
	@samurai_counter = 0

	class << self
		attr_accessor :samurai_counter
	end

	def initialize 
		super
		@health=200
		@@count=0
		self.class.samurai_counter += 1
		how_many
	end

	def death_blow(enemy)
		enemy.health-=enemy.health
		puts 'Enemy killed '
	end

	def meditate
		@health=100
		puts 'health restored'
	end

	def how_many
		puts "There are #{self.class.samurai_counter} samurais"
	end
end

a=Samurai.new
b=Samurai.new

