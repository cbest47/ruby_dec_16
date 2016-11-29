class Project
	attr_accessor :name, :description
	def initialize(name, description)
		@name = name
		@description = description
	end
	def add_to_team
		puts "I'm a new team member!"
	end
	def elevator_pitch
		puts "The project name is #{@name} and the description is #{@description}"
	end
end

project1 = Project.new("Project 1", "Description 1")
puts project1.name
project1.add_to_team
project1.elevator_pitch