class GenreBook::Scraper

    attr_accessor :name, :book_name, :book_price, :book_url, :book_info, :book_detail

    def self.all_genre
     self.genre_books
    end

        def self.genre_books

                genres = []

                genres << self.scrape_genre

                genres
        end


        def self.scrape_genre

            doc = Nokogiri::HTML(open("http://books.toscrape.com"))
            doc.search("div.page_inner").map do |container|
            genre = self.new
            genre.name = container.css("a").text.strip
            genre.book_price = doc.search("p.price_color").text

            # scraper all the details... CLI choose when ther display

            details = doc.search("table.table.table-striped tbody tr  th").each {|th| }
             details.each{|detail| details.th}
             binding.pry
             genre.book_detail = put th
            # genre.book_info = true
            # genre.book_url = doc.search("li a").map {|link| link["href"]}
                # or
                # container.css("li a").map {|link| link["href"]}
            genre # class variable∏
           end
        end


end