def countWords(text_input)
    frequencies = Hash.new(0);
    words = text_input.split;
    words.each { |word| frequencies[word] += 1};
    #sort by count
    frequencies = frequencies.sort_by do |frequence, count|
        count
    end
    #sort descending by frequency
    frequencies.reverse!;
    #print all elements
    frequencies.each do |word, count|
        puts word + " " + count.to_s;
    end
end

def main()
    puts "Enter text_input: ";
    text = gets.chomp;
    countWords(text);
end

main();