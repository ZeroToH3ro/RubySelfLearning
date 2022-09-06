class Banner 
    def initialize(message, width = 80)
    #create default width to avoid user input empty 
        @message = message;
        @width = [width,80].min;
    end

    private def horizontal_rules
        "+-#{'-'*@width}-+";
    end

    private def empty_line 
        "| #{' '*@width} |";
    end

    private def message_at_the_center
        "| #{@message.center(@width)} |";
    end

    def to_s
        [horizontal_rules,empty_line,message_at_the_center,empty_line,horizontal_rules].join("\n");
    end
end

text1 = Banner.new("My name is Minh", 70);
text2 = Banner.new("This is OOP Banner", 90);

puts text1.to_s;
puts"New line"
puts text2.to_s;

