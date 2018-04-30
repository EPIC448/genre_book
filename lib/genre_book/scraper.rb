class GenreBook::Scraper
     
    attr_accessor :name, :price, :url, :product_info, :product_details

    def self.all_genre 
     self.genre_books     
    end

        def self.genre_books
        #   puts " <<-- DOC  genre=[]
        #     books=[]
        #         DOC"
                genres = []

                genres << self.scrape_genre
                
                genres
        end


        def self.scrape_genre
            
            doc = Nokogiri::HTML(open("http://books.toscrape.com"))
            genre = self.new
            doc.search("ul.nav.nav-list ul a").map do |container|
    
            genre.name = doc.css(h1).text.strip     
            genre.url =  true
            genre.product_details = true
            genre.product_info = true
        
            genre # class variable
           end
        end


end