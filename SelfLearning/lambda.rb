def lambda_demo(a_lambda)
    puts "I'm the method!"
    a_lambda.call
  end
  
lambda_demo(lambda { puts "I'm the lambda!" })
#checking symbols
my_array = ["raindrops", :kettles, "whiskers", :mittens, :packages]

# Add your code below!
symbol_filter = lambda {|x| x.is_a? Symbol}
symbols = my_array.select(&symbol_filter)

my_array = ["raindrops", :kettles, "whiskers", :mittens, :packages]

puts symbols
#check odd numbers
odds_n_ends = [:weezard, 42, "Trady Blix", 3, true, 19, 12.345]

is_odd = lambda { |x| x.is_a?Integer and x%2 != 0}

ints = odds_n_ends.select(&is_odd);

puts ints;

#practice lambda
crew = {
  captain: "Picard",
  first_officer: "Riker",
  lt_cdr: "Data",
  lt: "Worf",
  ensign: "Ro",
  counselor: "Troi",
  chief_engineer: "LaForge",
  doctor: "Crusher"
}
# Add your code below!
first_half = lambda { |x,y| y<"M"}