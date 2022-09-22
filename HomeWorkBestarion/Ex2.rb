require 'benchmark'
require 'csv'

def print_time_spent
  time = Benchmark.realtime do
    yield;
  end
  puts "Time: #{time.round(2)}";
end
    
def create_name (id)
  return "Nguyen Van A #{id}"
end

def create_email (id)
  name = create_name(id).gsub(/\s+/, "");
  return name + "@gmail.com"; 
end

def create_phone_number_random
  phone = rand(100000000..999999999).to_s;
  return "'0" + phone;
end

def create_address
  address = ["HCM City","HN Capital","DaNang City", "American Tho"];
  return address[rand(address.length)];
end

def create_birthday
  rand(Date.civil(1990,1,31)..Date.civil(2010,1,31)).to_s.gsub("-","/");
end

headers = ['Name', 'Email', 'Phone', 'Address', 'Day_of_birth', 'Profile']
profile = '"Like TV 100", Some special charactor: \ / \' $ ~ & @ # ( ; """';

print_time_spent do
    CSV.open('data.csv', 'w', write_headers: true, headers: headers) do |csv|
      500_000.times do |i|
        csv << [create_name(i), create_email(i), create_phone_number_random,
                create_address, create_birthday, profile];
      end
    end
end




