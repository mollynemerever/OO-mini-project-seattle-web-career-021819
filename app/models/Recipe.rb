class Recipe

  attr_reader :ingredients, :allergens

  @@all = []

  def initialize(ingredients, allergens)
    @ingredients = ingredients
    @allergens = allergens
    @@all << self
  end

  def self.all
    @@all
  end

  def add_ingredients(ingredients_array)
    @ingredients = ingredients_array
    #come back to this method

  end

end
