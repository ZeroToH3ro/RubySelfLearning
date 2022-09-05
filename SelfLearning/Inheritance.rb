class Chef
    def make_chicken
        puts "Making chicken...";
    end
    def make_salad
        puts "Making salad...";
    end
    def make_special_fish
        puts "Making special fish...";
    end
end

class ItalianChef < Chef
    def make_special_fish
        puts "The chef make shark";
    end
end

italianChef = ItalianChef.new();
italianChef.make_special_fish;