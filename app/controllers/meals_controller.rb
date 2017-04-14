class MealsController < ApplicationController
  before_action :find_meal, only: [:show, :edit, :update, :destroy]

  def index
    @meals = Meal.all
  end

  def show
  end

  def new
    @meal = Meal.new
  end

  def create
    @meal = Meal.new(meal_params)

    if @meal.save
      redirect_to @meal, notice: "Successfully created new meal plan!"
    else
      render 'new'
    end
  end

  def edit
  end

  def update
    if @meal.update(meal_params)
      redirect_to @meal, notice: "Successfully updated new meal plan!"
    else
      render 'edit'
    end
  end

  def destroy
    @meal.destroy
    redirect_to root_path, notice: "Successfully deleted meal plan"
  end

  private

  def meal_params
    params.require(:meal).permit(:name, :notes)
  end

  def find_meal
    @meal = Meal.find(params[:id])
  end

end
