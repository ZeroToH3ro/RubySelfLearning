def single_quote
   puts 'Hello World and others!'
  # single quote string here
end

def double_quote
  # Double quote string here
   puts "Hello World and others!"
end

def here_doc
    puts document = <<-HERE

Hello World and others!

HERE
end

single_quote;
double_quote;
here_doc;
