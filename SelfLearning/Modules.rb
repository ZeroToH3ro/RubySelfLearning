module Tools
    def sayhi(name)
        puts "say hi: #{name}";
    end

    def saybye(name)
        puts "saybye: #{name}";
    end
end

include Tools
Tools.sayhi("Minh");
