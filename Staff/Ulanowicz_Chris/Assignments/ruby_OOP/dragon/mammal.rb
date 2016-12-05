class Mammal
  attr_accessor :health
  def initialize
    @health = 150
    puts 'I am alive!'
    self
  end
  def display_health
    puts @health
  end
end
