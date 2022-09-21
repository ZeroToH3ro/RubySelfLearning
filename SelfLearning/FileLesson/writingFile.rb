File.open("/home/zero/CodeRuby/SelfLearning/test.txt", "r+") do |file|
    file.readline();
    file.write("\noverriden");
    file.write("\nhello world");
end


