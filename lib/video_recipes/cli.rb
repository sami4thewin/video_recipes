#Our CLI Controller

class VideoRecipes::CLI

  def call
    list_recipes
    menu
    goodbye
  end

  def list_recipes
    #get recipes
    # using here doc, google it, it's just like a giant string
    puts "I hope you're hungry."
    # puts <<-DOC.gsub /^\s*/, ''
    # 1. Chicken - Make chicken.
    # 2. Steak - Make steak.
    # DOC
    @recipes = VideoRecipes::Recipe.today
  end

  def menu
    input = nil
    while input != "exit"
      puts "Enter the number of the recipe you'd like more info on or type list to see recipes again or type exit:"
      input = gets.strip.downcase
      #this is so if you put in a string, it won't read as an integer. This is because the .to_i value of a string is 0.
      if input.to_i > 0
        puts @deals[input.to_i - 1]
      elsif input == "list"
        list_recipes
      else
        puts "Please enter valid command"    
      # case input
      # when "1"
      #   puts "More info on recipe 1..."
      # when "2"
      #   puts "More info on recipe 2..."
      # when "list"
      #   list_recipes
      # else
      #   puts "Please enter valid command"
      end
    end
  end

  def goodbye
    puts "Enjoy your food."
  end

end
