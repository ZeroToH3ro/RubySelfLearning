module Tools
    def sayhi(name)
        puts "say hi: #{name}";
    end

    def saybye(name)
        puts "saybye: #{name}";
    end
end

include Tool
#just as if we’d copied and pasted these methods over to the class definition.
Tools.sayhi("Minh");
