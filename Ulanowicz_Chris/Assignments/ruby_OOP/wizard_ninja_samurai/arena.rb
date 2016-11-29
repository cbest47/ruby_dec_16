require_relative 'ninja'
require_relative 'samurai'
require_relative 'wizard'

Shinobi = Ninja.new("Shinobi")
Tom = Samurai.new("Tom")
Merlin = Wizard.new("Merlin")
Merlin.fireball(Shinobi)
Merlin.heal
Merlin.display_info

Shinobi.get_away
Shinobi.steal(Tom)
Shinobi.display_info

Tom.meditate
Tom.death_blow(Shinobi)
Tom.display_info
Tom.how_many