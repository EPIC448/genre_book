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
        @genres = GenreBook::Scraper.all_genre
        @genres.each.with_index(1) do |genre, index| 
        puts "#{index}. #{genre.name} - #{genre.book_url}"
        end
    end
  


    def list_book
        input = nil
        while input != "exit"
        puts "Enter the number of book you want to see OR exit ."     
        input = gets.strip.downcase
        if input.to_i > 0
            genre_book = @genres[input.to_i-1]
            puts "#{i + 1}. #{genre_book.book_name} - #{genre_book.book_url} - #{genre_book.book_info}"

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
    end


    def goodbye
      puts "always a pleasure with you"
    end


   
end