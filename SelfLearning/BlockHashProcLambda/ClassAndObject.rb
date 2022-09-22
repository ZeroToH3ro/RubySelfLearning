class Book
    attr_accessor :title, :author, :pages;
    def initialize (title, author, pages)
            @title = title;
            @author = author;
            @pages = pages;
    end
end

book1 = Book.new("Mike", "John", 200);

book2 = Book.new("Hi", "MI", 300);

puts book1.title;
puts book2.author;