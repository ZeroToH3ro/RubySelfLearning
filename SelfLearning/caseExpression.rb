def get_day_name(day)
    day_name = ""
    
    case day
        when "mon"
            day_name = "Monday";
        when "tue"
            day_name = "Tuesday";
        when "wed"
            day_name = "Wednesday";
        when "thu"
            day_name = "Thursday";
        when "fri"
            day_name = "Friday";
        when "sat"
            day_name = "Saturday";
        when "sun"
            day_name = "Sunday";
        end
    return day_name
end

#puts get_day_name("mon");

#new case
def language (nameLanguage)
    case nameLanguage
    when "JS" then puts "Website";
    when "Python" then puts "Science"
    when "Ruby" then puts "Web application"
    else puts "I don't know"
    end
end
language("Python");




