class VideoRecipes::Recipe

  attr_accessor :name, :recipe

  def self.today
    #return a bunch of recipes
    # puts <<-DOC.gsub /^\s*/, ''
    # 1. Chicken - Make chicken.
    # 2. Steak - Make steak.
    # DOC

    recipe_1 = self.new
    recipe_1.name = "Chicken"
    recipe_1.recipe = "Make chicken."

    recipe_2 = self.new
    recipe_2.name = "Steak"
    recipe_2.recipe = "Make steak."

    [recipe_1, recipe_2]
  end

end
