def phone_number
  phone = rand(100000000..999999999).to_s;
  return "'0" + phone;
end

puts phone_number;

def create_name (id)
  return "Nguyen Van A #{id}"
end

def time_rand from = 0.0, to = Time.now
  time = Time.at(from + rand * (to.to_f - from.to_f)).to_s;
  return time[0..9];
end

puts time_rand;

def create_address
  address = ["HCM City","HN Capital","DaNang City", "American Tho"];
  return address[rand(address.length)];
end

puts create_address;
  

puts rand(2..10);
