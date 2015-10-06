class RecipesController < ApplicationController
  def index
    search_query = params[:search] || 'Chocolate'
    @recipes = Recipe.for(search_query)
  end
end
