class Project
  attr_accessor :name, :description
  attr_reader :team_member
  def initialize name, description
    @name = name
    @description = description
    @team_member=1
  end
  def elevator_pitch
    "#{@name}, #{@description}"
  end

  def add_team_member
  	@team_member+=1
  end
end