class DailyMeal::Food

    def self.chicken
        #returns Title and URL of 5 recipes from http://www.seriouseats.com/tags/recipes/chicken
        self.chicken_menu
    end

    def chicken_menu
        doc = Nokogiri::HTML(http://www.seriouseats.com/tags/recipes/chicken)
        chicken_url = doc.css(".module__image-container")[1]["href"]
        puts chicken_url
    end



        

end
        
        