class Creature
    def initialize(name)
        @name = name;
    end

    def fight
        return  "Punch to the chops!";
    end
end

class Dragon < Creature
    def fight 
        return "Breathes fire!";
    super end
end 

creature = Creature.new("Dragon");
puts creature.fight;
puts "---------";
creature_dragon = Dragon.new("Animal Dragon");
puts creature_dragon.fight;