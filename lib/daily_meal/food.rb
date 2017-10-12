class DailyMeal::Food

    attr_accessor :name, :ingredients, :directions, :doc, :food_cat

    def self.chicken
        @food_cat = "http://www.seriouseats.com/tags/recipes/chicken"
        self.food_menu
        puts @recipe_link

    end

    def self.burgers
        @food_cat = "http://www.seriouseats.com/tags/recipes/burger"
        self.food_menu
        puts @recipe_link
    end

    def self.pasta
        @food_cat = "http://www.seriouseats.com/tags/recipes/burger"
        self.food_menu
        puts @recipe_link
    end

    def self.salad
        @food_cat = "http://www.seriouseats.com/tags/recipes/burger"
        self.food_menu
        puts @recipe_link
    end

    def self.dessert
        @food_cat = "http://www.seriouseats.com/tags/recipes/burger"
        self.food_menu
        puts @recipe_link
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
            self.link_scraper
            self.ingredient_getter
        elsif food_input == "2"
            self.link_scraper
            self.direction_getter
        elsif food_input == "3"
            DailyMeal::CLI.call
        elsif food_input == "4"
            DailyMeal::CLI.call
        else puts "Please make a numerical selection"
        end

    end
        



    def self.link_scraper
    
        recipe_url = Nokogiri::HTML(open("#{@food_cat}"))
    
        recipe_links = []
        links = recipe_url.css('.module__link')
        links.each{|link| recipe_links << link['href']}
    
        @recipe_link = recipe_links.sample
    end

    def self.ingredient_getter
        recipe_spec = Nokogiri::HTML(open("#{@recipe_link}"))

        @ingredients = []
        ingredient_list = recipe_spec.css('.recipe-ingredients')
        ingredient_list.each{|spec| @ingredients << spec.text}
        puts @ingredients
    end
    
    def self.direction_getter
        recipe_direction = Nokogiri::HTML(open("#{@recipe_link}"))

        @directions = []
        direction_list = recipe_direction.css('.recipe-procedures-list.instructions')
        direction_list.each{|step| @directions << step.text}
        puts @directions
    end


end

        
        