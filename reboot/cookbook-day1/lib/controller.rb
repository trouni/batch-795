require_relative 'view'
require_relative 'recipe'

class Controller
  def initialize(cookbook)
    @cookbook = cookbook
    @view = View.new
  end

  def list
    display_recipes
  end

  def create
    # 1. Ask the user for the name of the recipe and the description
    name = @view.ask_for('name')
    description = @view.ask_for('description')
    # 2. Create an instance of Recipe
    recipe = Recipe.new(name, description)
    # 3. Add the recipe to the cookbook
    @cookbook.add_recipe(recipe)
  end

  def destroy
    # 1. List the recipes
    display_recipes
    # 2. Ask the user for a recipe index
    index_to_remove = @view.ask_for_index
    # 3. Remove the recipe from the cookbook
    @cookbook.remove_recipe(index_to_remove)
  end

  private

  def display_recipes
    # 1. Get the recipes from the cookbook
    recipes = @cookbook.all
    # 2. Ask the view to display the recipes
    @view.display(recipes)
  end
end