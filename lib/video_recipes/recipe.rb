class VideoRecipes::Recipe

  attr_accessor :name, :recipe

  def self.today
    self.scrape_recipes
    #scrape simple recipes and then return recipes based on that data

    #return a bunch of recipes
    # puts <<-DOC.gsub /^\s*/, ''
    # 1. Chicken - Make chicken.
    # 2. Steak - Make steak.
    # DOC

    # recipe_1 = self.new
    # recipe_1.name = "Chicken"
    # recipe_1.recipe = "Make chicken."
    #
    # recipe_2 = self.new
    # recipe_2.name = "Steak"
    # recipe_2.recipe = "Make steak."
    #
    # [recipe_1, recipe_2]
  end

  def self.scrape_recipes
    #the stubbed code above which is the properties, should be scraped here
    recipes = []
    recipes << self.scrape_simply

    #go to simple recipes, find the recipes, extract the properties, instantiate a recipe

    recipes
  end

  def self.scrape_simply
    doc = Nokogiri::HTML(open("https://simplyrecipes.com"))
  end


end
