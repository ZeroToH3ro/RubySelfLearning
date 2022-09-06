# You have the following classes.
module Walkable
  def walk(name, gait)
    "#{name} #{gait} forward"
  end
end

class Person
  include Walkable

  attr_reader :name

  def initialize(name)
    @name = name
  end

  def gait
    "strolls"
  end

  public def walk_with_gait
    walk(@name, gait);
  end
end

class Cat
  include Walkable

  attr_reader :name

  def initialize(name)
    @name = name
  end

  def gait
    "saunters"
  end

  public def walk_with_gait
    walk(@name, gait);
  end
end

class Cheetah
  include Walkable

  attr_reader :name

  def initialize(name)
    @name = name
  end

  def gait
    "runs"
  end

  public def walk_with_gait
    walk(@name, gait);
  end
end
# You need to modify the code so that this works:

mike = Person.new("Mike")
puts mike.walk_with_gait;
# => "Mike strolls forward"

kitty = Cat.new("Kitty")
puts kitty.walk_with_gait;
# => "Kitty saunters forward"

flash = Cheetah.new("Flash")
puts flash.walk_with_gait;
# => "Flash runs forward"
# You are only allowed to write one new method to do this