class DailyMeal::Food

    attr_accessor :name, :ingredients, :directions

    def self.chicken
        self.food_menu

    end

    def self.burgers
        self.scrape_burgers
    end

    def self.pasta
        self.scrape_pasta
    end

    def self.salad
        self.scrape_salad
    end

    def self.dessert
        self.scrape_dessert
    end

    def self.scrape_chicken
        doc = Nokogiri::HTML(open("http://www.seriouseats.com/tags/recipes/chicken"))

        recipe = self.new
        recipe.name = doc.search("module_image"[0]).text.strip
    end

    def self.food_menu
        puts <<-food_options
            What would you like?
            
            1. Ingredients
            2. Directions
            3. Different Recipe
            4. Return
            food_options

        food_input = gets.strip.downcase

        if food_input == "1"
            puts "ingredients"
        elsif food_input == "2"
            puts "directions"
        elsif food_input == "3"
            DailyMeal::CLI.call
        elsif food_input == "4"
            DailyMeal::CLI.call
        else puts "Please make a numerical selection"
        end

    end
        



    def link_scraper
        urls = []
    
        recipe_url = Nokogiri::HTML(open("http://www.seriouseats.com/tags/recipes/chicken"))
    
        recipe_links = []
        links = recipe_url.css('.module__link')
        links.each{|link| recipe_links << link['href']}
    
        puts recipe_links[1, 3, 5, 7]
    
    end

end


        
        