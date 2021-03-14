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
            #   list_book
            book_list
        elsif input == "Exit"
            goodbye
        else
            call
        end
    end 


    def list_genre  
        @genres = GenreBook::Scraper.all_genre
        # @genres.each.with_index(1) do |genre, index|
        #  puts "#{index}. #{genre.name} - #{genre.book_url}"
        # end
    end
      


    def book_list
        # list all the book in that Genre ... Form genre.book_url
        @book_list = GenreBook::Scraper.all_genre
          @book_list.each.with_index(1) do |book, index|
          
            puts "#{index}. #{book.book_url}"
        end
    end


    def list_book
        input = nil
        while input != "exit"
        puts "Enter book number you want to see OR exit"     
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