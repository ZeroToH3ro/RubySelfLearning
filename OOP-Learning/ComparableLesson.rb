class Card 
  include Comparable;
  attr_reader :value;
    
  def initialize (value)
    @value = value;
  end

  def <=> (other)
    self.value <=> other.value;
  end

end

objCard_1 = Card.new(5);
objCard_2 = Card.new(1);
objCard_3 = Card.new(3);

puts objCard_1 > objCard_2;

puts objCard_2.between?(objCard_3, objCard_1);

print [objCard_3,objCard_2,objCard_1].sort;

