class RecipesController < ApplicationController
  before_action :get_recipe, only: [:show, :edit, :update, :destroy]

  def index
    @recipes = Recipe.all
  end

  def show
  end

  def new
    @recipe = Recipe.new
  end

  def create
    @recipe = Recipe.new(recipe_params)

    if @recipe.save!
      redirect_to recipes_path
    else
      render 'new'
    end
  end

  def edit
  end

  def update
  end

  def destroy
    @recipe.destroy
  end

  private

  def get_recipe
    @recipe = Recipe.find(params[:id])
  end

  def recipe_params
    params.require(:recipe).permit(:name, :description, :servings, :calories, :cost, ingredients_attributes: [:name, :unit])
  end

end
