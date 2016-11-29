class Human

    attr_accessor :strength, :intelligence, :stealth, :health


    def initialize

        @strength = 3
        @intelligence = 3
        @stealth = 3
        @health = 100
    end

    def  attack(enemy)

        if enemy.class.ancestors.include?(Human)
            enemy.health = enemy.health - 5
        end
    end

end

######################
# test  the class
#####################

jon = Human.new
jen = Human.new
ben = Human.new

puts ("bens health is #{ben.health}")
puts ("jons health is #{jon.health}")
puts ("jens health is #{jen.health}")

jon.attack(ben)
jon.attack(ben)

ben.attack(jen)
ben.attack(jen)

puts ("bens health is #{ben.health}")
puts ("jons health is #{jon.health}")
puts ("jens health is #{jen.health}")
