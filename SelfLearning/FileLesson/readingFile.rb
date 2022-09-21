=begin
File.open("/home/zero/CodeRuby/SelfLearning/test.txt", "r") do |file|
    puts file.readline
end
=end

#reading file

File.foreach("/home/zero/CodeRuby/SelfLearning/test.txt"){
  |line| print line; 
}
puts
