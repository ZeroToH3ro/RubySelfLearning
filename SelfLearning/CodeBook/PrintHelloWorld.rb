
newstr = '';
a = "hello world".split(//).each{ |x| newstr << x.capitalize; };
puts newstr

print a = "Hello world".split(//);
puts


def caps( anarg )
  puts anarg;
  #yield( anarg )
end
caps( "a lowercase string" ){ |x| x.capitalize! ; puts( x ) }
