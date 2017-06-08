class RecipeController < ApplicationController
  before_action :authenticate_user!
  before_action :get_all_recipes , only: [:index]
  before_action :set_id , only: [:edit,:destroy,:show]

  def get_all_recipes
    @allRecipe = Recipe.all
  end

  def set_id
    @id = params[:id]
  end

  def index
  end

  def show
    @recipe = Recipe.find(@id)
  end

  def new
    @recipe = Recipe.new
  end

  def create
    @recipe =Recipe.new(recipe_params)
    if @recipe.save
      @recipe.create_activity :create, owner: current_user
      redirect_to recipe_index_path      
    end
  end

  def destroy
  end

  def edit
  end

  def update
    
  end

  def recipe_params
    return params.require(:recipe).permit(:name, :description)
  end

end
