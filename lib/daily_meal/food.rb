class DailyMeal::Food

    attr_accessor :name, :ingredients, :directions, :food_cat

    def self.food_pick(selection)
        @food_cat = "http://www.seriouseats.com/tags/recipes/#{selection}"
        self.link_scraper
        self.ingredient_getter
        self.direction_getter
        puts @recipe_link     
    end

    def self.selection_menu
        puts <<-food_options
            What would you like?
            
            1. Ingredients
            2. Directions
            3. Different Recipe
            4. Return
            food_options

        food_input = nil


            puts "Please make a numerical selection"

            food_input = gets.strip.downcase

                if food_input == "1"
                    puts @ingredients
                elsif food_input == "2"
                    puts @directions
                elsif food_input == "3"
                    self.food_pick
                elsif food_input == "4"
                    DailyMeal::CLI.new
                else puts "Please make a numerical selection"
                
            end
            self.food_menu
    end
        



    def self.link_scraper
    
        recipe_url = Nokogiri::HTML(open("#{@food_cat}"))
    
        recipe_links = []
        links = recipe_url.css('.module__link')
        links.each{|link| recipe_links << link['href']}
    
        @recipe_link = recipe_links.sample
    end


    ###Do Not Touch###

    def self.ingredient_getter
        recipe_spec = Nokogiri::HTML(open("#{@recipe_link}"))

        @ingredients = []
        ingredient_list = recipe_spec.css('.recipe-ingredients')
        ingredient_list.each{|spec| @ingredients << spec.text.strip}
        
    end
    
    def self.direction_getter
        recipe_direction = Nokogiri::HTML(open("#{@recipe_link}"))

        @directions = []
        direction_list = recipe_direction.css('.recipe-procedures-list.instructions')
        direction_list.each{|step| @directions << step.text.strip}
    end


end

        
        