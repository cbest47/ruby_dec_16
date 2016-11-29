require_relative 'mammal'
class Dragon < Mammal
  def initialize
      @health=170
  end
  def fly
        @health = @health - 10
        self
  end
  def attack_town
        @health = @health - 50
        self
  end
  def eat_humans
        @health = @health + 20
        self
  end

  def display_health
      puts "this is dragon"
      super()
  end
end

Scout = Dragon.new

Scout.attack_town().attack_town().attack_town().eat_humans().eat_humans().fly().fly().display_health()
