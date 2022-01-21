class View
  def display(recipes)
    puts 'Here are your recipes:'
    recipes.each_with_index do |recipe, index|
      puts "#{index + 1}. #{recipe.name} - #{recipe.description}"
    end
  end

  def ask_for(thing)
    puts "What is the #{thing} of the recipe?"
    print '> '
    gets.chomp
  end

  def ask_for_index
    puts "Select a recipe number"
    print '> '
    gets.chomp.to_i - 1
  end
end