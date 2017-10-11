class DailyMeal::CLI

    def call
        puts "Welcome to Daily Meal."
        list_options
        menu
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
            @recipe = DailyMeal::Food.chicken
        when "2"
            @recipe = DailyMeal::Food.burgers
        when "3"
            @recipe = DailyMeal::Food.pasta
        when "4"
            @recipe = DailyMeal::Food.salad
        when "5"
            @recipe = DailyMeal::Food.dessert
        when "list"
            call
        else
            puts "Please select a number or 'Exit'"
        end

        
    end

end
