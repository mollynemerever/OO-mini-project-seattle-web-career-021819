class User

  attr_reader :user

  @all = []

 def initialize(user)
   @user = user
   @all << self
 end

  def recipes
    RecipeCard.all.select do |recipe|
      recipe.user == self
    end
  end

def add_recipe_card(date, rating, recipe)
  new_recipe = RecipeCard.new(date, rating, self, recipe)
end

def declare_allergen(ingredient)
  new_allergen = Allergen.new(self, ingredient)
end

def allergens
  return_array = []
  Allergen.all.each do |allergen|
    if allergen.user == self
      return_array << allergen.ingredient
    end
  end
  return_array
end

def users_recipes
  recipe_array = []
  RecipeCard.all.each do |recipe| #gives array of user's recipes
    if recipe.user == self
      recipe_array << recipe
    end
  end
  recipe_array
end

def top_three_recipes
  array = users_recipes
  #come back to this method
end

def most_recent_recipe
  recipe_array[-1]
end

#sort the RecipeCard.all array largest to smallest
#return .recipe for recipes in indexes 0,1,2

end
