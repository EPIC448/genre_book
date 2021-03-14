class GenreBook::Scraper

    attr_accessor :name, :book_name, :book_price, :book_url, :book_info
    

    def self.all_genre
     self.concepts
    end

        def self.concepts

                genres = []

                genres << self.scrape_genre
                genres << self.books
                genres << self.scrape_detail

                #answer is in the book scraper.
                
binding.pry
                genre
    

        end


         def self.get_books
            "get all the list of books"
         end

         def self.book_info
            "get all the book information"

         end


        def self.scrape_genre

            doc = Nokogiri::HTML(open("http://books.toscrape.com"))
    
            doc.search("ul.nav.nav-list ul a").map do |container|

            genre = self.new

            genre.name = container.text.strip     #works perfect
            genre.book_url = "http://books.toscrape.com/#{container.values.join}" 
            
            genre # class variable
            
           end

        #    genre.book_price = container.css("p.price_color p").text
        end

         
        def self.books
       "scrape all the books from the BOOK_URL"
    #    doc = Nokogiri::HTML(open("http://books.toscrape.com/#{col-sm-8 col-md-9}"))

      
         end

 
        
        def self.scrape_detail
            # Scraper for book details
            "DOC  SCRAPER Covers all the books, 
             name
             price
             info

             DOC"

        end



end


