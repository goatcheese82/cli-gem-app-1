class DailyMeal::CLI

    def call
        puts "Welcome to Daily Meal."
        list_options
        menu
        selection_menu
        goodbye
    end

    def list_options
        puts <<-DOC
            1. Chicken
            2. Burgers
            3. Pasta
            4. Salad
            5. Dessert
        DOC
    end

    def menu
        puts "What would you like to eat?"
        input = gets.strip.downcase
        

            case input
            when "1"
                @recipes = DailyMeal::Food.food_pick('chicken')

            when "2"
                @recipes = DailyMeal::Food.food_pick('burger')
            when "3"
                @recipes = DailyMeal::Food.food_pick('pasta')
            when "4"
                @recipes = DailyMeal::Food.food_pick('salad')
            when "5"
                @recipes = DailyMeal::Food.food_pick('dessert')
            when "list"
                call
            else
                puts "Please select a number or 'Exit'"
            end
        
    end

    def selection_menu
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

    def goodbye
        puts "Thank you! Enjoy your meal!"
    end

end
