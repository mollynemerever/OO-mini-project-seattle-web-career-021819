require_relative '../config/environment.rb'


def users_recipes
  recipe_array = []
  RecipeCard.all.each do |recipe| #gives array of user's recipes
    if recipe.user == self
      recipe_array << recipe
    end
  end
  recipe_array
end



binding.pry
