require_relative 'recipe'
require 'csv'

class Cookbook
  def initialize(csv_file)
    @csv_file = csv_file
    @recipes = [] # array of instances of Recipe
    load_csv
  end

  def all
    @recipes
  end

  def add_recipe(recipe)
    @recipes << recipe
    save_csv
  end

  def remove_recipe(recipe_index)
    @recipes.delete_at(recipe_index)
    save_csv
  end

  private

  def load_csv
    # populates the @recipes array with instances of Recipe
    CSV.foreach(@csv_file) do |row|
      @recipes << Recipe.new(row[0], row[1]) # instance of Recipe
    end
  end

  def save_csv
    CSV.open(@csv_file, "wb") do |csv|
      @recipes.each do |recipe|
        # csv << ["Recipe name", "Recipe description"]
        csv << [recipe.name, recipe.description]
      end
    end
  end
end
