def make_words (sstr, str)
  "#{sstr[0..sstr.length/2]}#{str}#{sstr[sstr.length/2..-1]}";
end

print make_words("Pyon", "th")
print "\n",make_words("Pyonz", "th")
print "\n",make_words("Pyonxz", "th")
