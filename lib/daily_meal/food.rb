class DailyMeal::Food

    def self.chicken

        attr_accessor :name, :recipe, :url

        recipe_1 = "Recipe1"
        recipe_1.name = "RecipeName"
        recipe_1.recipe = "Recipe1recipe"
        recipe_1.url = "Recipe1URL"

        recipe_2 = "Recipe2"
        recipe_2.name = "RecipeName"
        recipe_2.recipe = "Recipe2recipe"
        recipe_2.url = "Recipe2URL"

        [recipe_1, recipe_2]
    end

end
        
        