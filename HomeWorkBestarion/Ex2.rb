require 'csv'
require 'pg'

def create_name (id)
  "Nguyen Van A #{id}"
end

def create_email (id)
  create_name(id).gsub(/\s+/, "") + "@gmail.com";
end

def create_phone_number_random
  phone = rand(100000000..999999999).to_s;
  return "'0" + phone;
end

def create_address
  address = ["HCM City","HN Capital","DaNang City", "American Tho"].sample;
end

def create_birthday
  rand(Date.civil(1990,1,31)..Date.civil(2010,1,31)).to_s.gsub("-","/");
end
headers = ['Name', 'Email', 'Phone', 'Address', 'Day_of_birth', 'Profile']
profile = 'Like TV 100", Some special charactor: \ / \' $ ~ & @ # ( ; ""';

CSV.open('data.csv', 'w+', write_headers: true, headers: headers) do |csv|
    500_000.times do |i|
    csv << [create_name(i), create_email(i), create_phone_number_random,
            create_address, create_birthday, profile];
    end
end

start = Time.now;

conn = PG.connect(
  dbname: "postgres",
  port: 5432,
  user: "postgres",
  password: "minh21052002"
)

file_name = "/home/zero/CodeRuby/HomeWorkBestarion/data.csv";

sql = "Copy Profile(name, email, phone, address, birthday, information) FROM \'#{file_name}\' DELIMITER ',' HEADER CSV;"

conn.exec(sql);

puts endProgram = Time.now - start;

#Time: 1,02195.

