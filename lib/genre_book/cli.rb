# CLI COntroller
class GenreBook::CLI

    def call
        puts "Welocme, Type genre to see list of all genres"
        puts "OR"
        puts " type in books to see list of books"
        puts "OR"
        puts "exit"

        input = gets.strip.downcase
        
        if input == "list"
              list_genre
            #select genre number
        elsif input == "books"
              list_book
        elsif input == "Exit"
            goodbye
        else
            call
        end
    end 


    def list_genre  
        puts "romaces "
    end
  


    def list_book
        puts "Enter the number of book you want to see OR exit ."
        input = gets.strip.downcase
        
        if input ==  "1"
            puts  <<-DOC 
             book 1   
             DOC

        elsif input ==  "2"
            puts "book 2"
        elsif input == "list"
            list_genre
        elsif input == "exit"
            goodbye
        else
            list_book
        end

    end


    def goodbye
      puts "always a pleasure with you"
    end


   
end