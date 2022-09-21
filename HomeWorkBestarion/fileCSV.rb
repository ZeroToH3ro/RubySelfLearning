require 'benchmark'

def print_memory_usage
  memory_before = `ps -o rss= -p #{Process.pid}`.to_i;
  yield;
  memory_after = `ps -o rss= -p #{Process.pid}`.to_i;

  puts "Memory: #{((memory_after - memory_before) / 1024.0).round(2)} MB";
end

def print_time_spent
  time = Benchmark.realtime do
    yield;
  end

  puts "Time: #{time.round(2)}";
end
    
require 'csv'

headers = ['Name', 'Email', 'Phone', 'Address', 'Day_of_birth', 'Profile']
name    = "Nguyen Van A ";
phone   = "0123456789";
email = "abc@gmail.com";
address    = "HCM City";
day_of_birth  = "2000/01/01";
profile = '"Like TV 100", Some special charactor: \ / \' $ ~ & @ # ( ; """';

print_memory_usage do
  print_time_spent do
    CSV.open('data.csv', 'w', write_headers: true, headers: headers) do |csv|
      500_000.times do |i|
        csv << [name+"#{i}", email, phone, address, day_of_birth, profile];
      end
    end
  end
end




