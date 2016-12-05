require_relative 'human'
class Samurai < Human
	private
	attr_accessor :number_samurais
	@@number_samurais = 0
	def initialize(name)
		super
		@health = 200
		@@number_samurais += 1
		puts "There are now #{@@number_samurais} samurais"
	end
	public
	def how_many
		puts "There are currently #{@@number_samurais} samurais"
		self
	end
	def meditate
		@health = 200
		puts "#{@name} meditated and health was fully restored to #{@health}"
		self
	end
	def display_info
		puts "#{@name}'s health is #{@health}, intelligence is #{@intelligence}, strength is #{@strength}, and stealth ability is #{@stealth}"
		self
	end
	def death_blow(target)
		attack(target)
		target.health = 0
		puts "#{target.name}'s health is now #{target.health}"
		self
	end
end
