class IngredientsController < ApplicationController
  
  def index
    @ingredients = Ingredient.all
  end
  
  def show
    @ingredient = Ingredient.find(params[:id])
  end
  
  def new
    @ingredient = Ingredient.new
  end
  
  def create
    ingredient = Ingredient.create(ingredient_params)
    if ingredient.save!
      redirect_to ingredient_path(ingredient), notice: 'Ingredient Created!'
    else
      render 'new'
    end
  end
  
  def edit
    @ingredient = Ingredient.find(params[:id])
  end
  
  def update
    @ingredient = Ingredient.find(params[:id])
    if @ingredient.update!(ingredient_params)
      redirect_to ingredient_path(@ingredient), notice: 'Ingredient Updated!'
    else
      render 'new'
    end
  end
  
  def destroy
    
  end
  
  private
  
  def ingredient_params
    params.require(:ingredient).permit(:name, :quantity, :unit, :substitution, 
                                       :generic_name, :source, :warning => [], :category => [])
  end
end