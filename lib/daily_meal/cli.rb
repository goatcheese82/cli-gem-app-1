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
            #accesses #menu_chicken
        when "2"
            ##menu_burgers
        when "3"
            ##menu_pasta
        when "4"
            puts "Salad"
        when "5"
            puts "Dessert"
        when "list"
            call
        else
            puts "Please select a number or 'Exit'"
        end

        
    end

end
