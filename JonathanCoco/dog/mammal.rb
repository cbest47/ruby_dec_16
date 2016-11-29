class Mammal
  attr_accessor :health
  def initialize
    @health = 150
    self
  end
  def display_health
    puts "Health Value #{@health}"
    self
  end
end
