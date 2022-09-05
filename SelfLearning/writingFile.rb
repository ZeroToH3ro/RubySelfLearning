File.open("test.txt", "r+") do |file|
    file.readline();
    file.write("\noverriden");
end


