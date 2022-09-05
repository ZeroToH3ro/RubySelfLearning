class Machine 
    @@users = {};
    def initialize(username, password)
        @username = username;
        @password = password;
        @@users[username] = password;
        @file = {};
    end

    def create(fileName)
        time = Time.now;
        @file[fileName] = time;
        puts "Created file: #{fileName} by #{@username} at #{time}"; 
    end

    def Machine.get_users
        @@users;
    end
end

def main
    my_machine = Machine.new("eric", 01234)
    your_machine = Machine.new("you", 56789)

    my_machine.create("groceries.txt")
    your_machine.create("todo.txt")

    puts "Users: #{Machine.get_users}"
end

main;