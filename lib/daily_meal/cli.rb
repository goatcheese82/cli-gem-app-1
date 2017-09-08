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
        
    end

end
