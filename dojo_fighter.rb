class Fighter
    def initialize(name, defence, strength, luck, life)
        @name = name
        @defence = defence
        @strength = strength
        @luck = luck
        @life = life
    end
    
    attr_reader :name
    attr_accessor :defence, :strength, :luck, :life 

    def attack(opp)
        damage = @strength - opp.defence
        if damage <= 0
            puts "#{name} could not do damage to #{opp.name}"
        else
            opp.life = opp.life - damage
            puts "{#opp.name} took #{damage}, they now have #{opp.life} life left"
        end
    end
end


class Dojo
    def self.lift_weights(fighter)
        fighter.strength += 1
        puts "Getting fluffier"
    end

    def self.endurance_training(fighter)
        fighter.defence += 1
        puts "Zoomies to the max"
    end

    def self.coin_in_fountain(fighter)
        fighter.luck += 1
        puts "Got treats!"
    end
end

# p hank.strength
# Dojo.lift_weights(hank)
# p hank.strength

# p orion.defence
# Dojo.endurance_training(orion)
# p orion.defence

# p orion.luck
# Dojo.coin_in_fountain(orion)
# p orion.luck

## CREATE CHARACTER ##
puts "Welcome to Dojo Fighter. What is your name?"
input = gets.chomp
p "Hello #{input}"

player = Fighter.new(input, 0,0,0,10)
orion = Fighter.new("Orion", 4,4,4,10)

## Training Loop ##
puts "You are a happy cat living in a comfy house with your owner. All was peaceful until your owner started dating someone with an boisterous dog named Orion. Now Orion comes over all the time and invades your space. You must train so you will be ready to defend your abode. What would you like to work on first |strength| , |defence|, or |luck|?"


count = 0

while count <= 10 do    
    input = gets.chomp
    if input == "strength"
        Dojo.lift_weights(player)
        puts "Strength: #{player.strength}, defence: #{player.defence}, luck: #{player.luck}. Choose again: |strength| , |defence|, or |luck|?"
    elsif input == "defence"
        Dojo.endurance_training(player)
        puts "Strength: #{player.strength}, defence: #{player.defence}, luck: #{player.luck}. Choose again: |strength| , |defence|, or |luck|?"
    elsif input == "luck"    
        Dojo.coin_in_fountain(player)
        puts "Strength: #{player.strength}, defence: #{player.defence}, luck: #{player.luck}. Choose again: |strength| , |defence|, or |luck|?"
    end
    count += 1
end

## BATTLE ##
puts "The day of the big battle has arrived! You can hear Orion coming through the door. Are you ready to fight?"

input = gets

puts "FIGHT!"

while true
    player.attack(orion)
    puts "#{player.name} attacks, Orion's life is #{orion.life}. Hit enter to go again"
    input = gets
    orion.attack(player)
    puts "Orion attacks, #{player.name}'s life is #{player.life}
    Hit enter to go again"
    input = gets

    if player.life <= 0
        puts "Orion has won the battle!"
        break
    end

    if orion.life <= 0
        puts "#{player.name} has won the battle!"
        break
    end
end
