class RecipesController < ApplicationController
  before_action :get_recipe, only: [:show, :edit, :update, :destroy]

  def index
    if params[:q].present?
      @recipes = Recipe.where('lower(recipes.name) LIKE :search OR lower(recipes.description) LIKE :search OR lower(ingredients.name) LIKE :search OR lower(ingredients.generic_name) LIKE :search', search: "%#{params[:q].downcase}%").includes(:ingredients).references(:ingredients).distinct
    else
      @recipes = Recipe.all
    end
  end

  def show
  end

  def new
    @recipe = Recipe.new
  end

  def create
    if Recipe.create!(recipe_params)
      redirect_to recipes_path
    else
      render 'new'
    end
  end

  def edit
    @recipe = Recipe.find(params[:id])
  end

  def update
    @recipe = Recipe.find(params[:id])
    
    if @recipe.update!(recipe_params)
      redirect_to recipe_path(@recipe)
    else
      render 'edit', notice: 'unable to update recipe'
    end
  end

  def destroy
    @recipe.destroy
  end

  private

  def get_recipe
    @recipe = Recipe.find(params[:id])
  end

  def recipe_params
    params.require(:recipe).permit(:name, :description, :servings, :calories, :cost, ingredients_attributes: [:id, :name, :unit, :_destroy])
  end

end
