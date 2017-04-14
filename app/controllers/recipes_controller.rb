class RecipesController < ApplicationController

  def index
  end

  def show
  end

  def new
  end

  def create
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def get_recipe
    Recipe.find(params[:id])
  end

  def recipe_params
    params.require(:recipe).permit(:title, :description, :servings, :calories)
  end

end
