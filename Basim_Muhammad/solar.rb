class SolarSystem
	attr_accessor :name
	attr_reader :planets
	def initialize(name='Andromeda')
		@name=name
		@planets=[]
	end

	def add_planet(planet)
		@planets.push(planet)
	end

	def super_nova
		@planets=[]
	end
end

class Planet < SolarSystem
	attr_accessor :name
	attr_accessor :description
	attr_accessor :population

	def initialize(solar_system,name,desc,pop)
		@name=name
		@description=desc
		@population=pop
		solar_system.add_planet(self)
	end

	
end