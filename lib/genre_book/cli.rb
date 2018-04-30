# CLI COntroller
class GenreBook::CLI

    def call
        list of genre
            #select genre number
        book_info
    end 


    def list_genre
        puts "list genere "
    end
  


    def book_info
        puts "book info"
        puts  <<-DOC 
        book 1
        book 2
        DOC

    end
end