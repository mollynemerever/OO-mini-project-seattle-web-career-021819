class Ingredient

  attr_reader :ingredient

  @@all = []

  def initialize(ingredient)
    @ingredient  = ingredient
    @@all << self
  end

  def self.most_common_allergen
    #highest number of users are allergic to 
  end

end
