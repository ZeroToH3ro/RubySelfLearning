class Pet
    attr_reader :type, :name;

    def initialize(type, name)
        @type = type;
        @name = name;
    end

    def to_s
        "a #{type} named #{name}";
    end

end

class Owner 
    attr_reader :name;
    attr_accessor :pets;

    def initialize(name, pets)
        @name = name;
        @pets = []; 
    end

    def countNumberOfPets 
        pets.count;
    end

    def addNewPet(pet)
        @pets << pet;
    end

    def printPets
        @pets.each do |pet|
            puts pet;
        end
    end 
end

class Shelter
    attr_reader :owners;
    
    def initialize(owners)
        #use array instead of hash
        @owners = []; 
    end
    
    def isAdoptAnimal(owner, pet)
        @owners << owner unless @owner.include? owner;
        owner.addNewPet(pet);
    end

    def printAdoption
        owners.each do |owner|
            puts "#{owner.name} has adopted the following pets:";
            owner.printPets;
        end    
    end

    def unadopted_animal
        adopted_pets = owners.flat_map{ |owner| owner.pets};
        #returns an array if all adopted pets object
        ObjectSpace.each_object(Pet).to_a - adopted_pets;
    end
    
    def print_unadopted_animal
        puts "The animal shelter has the following unadopted pets: ";
        unadopted_animal.each { |pet| puts pet};
        puts " ";
    end

    def number_adopted_animal
        unadopted_animal.count;
    end

end


butterscotch = Pet.new('cat', 'Butterscotch')
pudding      = Pet.new('cat', 'Pudding')
darwin       = Pet.new('bearded dragon', 'Darwin')
kennedy      = Pet.new('dog', 'Kennedy')
sweetie      = Pet.new('parakeet', 'Sweetie Pie')
molly        = Pet.new('dog', 'Molly')
chester      = Pet.new('fish', 'Chester')
# unadopted pets below
asta         = Pet.new('dog', 'Asta')
laddie       = Pet.new('dog', 'Laddie')
fluffy       = Pet.new('cat', 'fluffy')
kat          = Pet.new('cat', 'Kat')
ben          = Pet.new('cat', 'Ben')
chatter      = Pet.new('parakeet', 'Chatterbox')
bluebell     = Pet.new('parakeet', 'Bluebell')

# p Pet.catalog

phanson = Owner.new('P Hanson')
bholmes = Owner.new('B Holmes')

shelter = Shelter.new
shelter.adopt(phanson, butterscotch)
shelter.adopt(phanson, pudding)
shelter.adopt(phanson, darwin)
shelter.adopt(bholmes, kennedy)
shelter.adopt(bholmes, sweetie)
shelter.adopt(bholmes, molly)
shelter.adopt(bholmes, chester)
shelter.print_unadopted_pets
shelter.print_adoptions
puts "#{phanson.name} has #{phanson.number_of_pets} adopted pets."
puts "#{bholmes.name} has #{bholmes.number_of_pets} adopted pets."
puts "The Animal shelter has #{shelter.number_of_unadopted} unadopted pets."
# Write the classes and methods that will be necessary to make this code run, and print the following output:

# P Hanson has adopted the following pets:
# a cat named Butterscotch
# a cat named Pudding
# a bearded dragon named Darwin

# B Holmes has adopted the following pets:
# a dog named Molly
# a parakeet named Sweetie Pie
# a dog named Kennedy
# a fish named Chester

# P Hanson has 3 adopted pets.
# B Holmes has 4 adopted pets