class RecipesController < ApplicationController
  def index
    @q = Recipe.ransack(params[:q])
    @recipes = @q.result(:distinct => true).includes(:recipe_ingredients, :favorite_recipes).page(params[:page]).per(10)

    render("recipe_templates/index.html.erb")
  end

  def show
    @favorite_recipe = FavoriteRecipe.new
    @recipe_ingredient = RecipeIngredient.new
    @recipe = Recipe.find(params.fetch("id_to_display"))

    render("recipe_templates/show.html.erb")
  end

  def new_form
    @recipe = Recipe.new

    render("recipe_templates/new_form.html.erb")
  end

  def create_row
    @recipe = Recipe.new

    @recipe.name = params.fetch("name")
    @recipe.image = params.fetch("image") if params.key?("image")

    if @recipe.valid?
      @recipe.save

      redirect_back(:fallback_location => "/recipes", :notice => "Recipe created successfully.")
    else
      render("recipe_templates/new_form_with_errors.html.erb")
    end
  end

  def edit_form
    @recipe = Recipe.find(params.fetch("prefill_with_id"))

    render("recipe_templates/edit_form.html.erb")
  end

  def update_row
    @recipe = Recipe.find(params.fetch("id_to_modify"))

    @recipe.name = params.fetch("name")
    @recipe.image = params.fetch("image") if params.key?("image")

    if @recipe.valid?
      @recipe.save

      redirect_to("/recipes/#{@recipe.id}", :notice => "Recipe updated successfully.")
    else
      render("recipe_templates/edit_form_with_errors.html.erb")
    end
  end

  def destroy_row
    @recipe = Recipe.find(params.fetch("id_to_remove"))

    @recipe.destroy

    redirect_to("/recipes", :notice => "Recipe deleted successfully.")
  end
end
