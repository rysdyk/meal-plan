class PlansController < ApplicationController
  before_action :find_plan, only: [:show, :edit, :update, :destroy]

  def index
    @plans = Plan.all
  end

  def show
  end

  def new
    @plan = Plan.new
  end

  def create
    @plan = Plan.new(plan_params)

    if @plan.save
      redirect_to @plan, notice: "Successfully created new meal plan!"
    else
      render 'new'
    end
  end

  def edit
  end

  def update
    if @plan.update(plan_params)
      redirect_to @plan, notice: "Successfully updated new meal plan!"
    else
      render 'edit'
    end
  end

  def destroy
    @plan.destroy
    redirect_to root_path, notice: "Successfully deleted meal plan"
  end

  private

  def plan_params
    params.require(:plan).permit(:name, :notes, :recipes)
  end

  def find_plan
    @plan = Plan.find(params[:id])
  end

end
