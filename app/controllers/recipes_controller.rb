class RecipesController < ApplicationController
  def create
    @recipe = Recipe.new(recipe_params)
    @menu_item = MenuItem.find(params[:menu_item_id])
    @ingredient = Ingredient.find_by name: params['recipe']['ingredient_id'].split[0].downcase
    @recipe.ingredient = @ingredient
    @recipe.menu_item = @menu_item
    if @recipe.save
      redirect_to @menu_item, notice: 'Ingredient added'
    else
      render 'menu_items/show', status: :unprocessable_entity
    end
  end

  def destroy
    @recipe = Recipe.find(params[:id])
    @menu_item = @recipe.menu_item
    @recipe.destroy
    redirect_to menu_item_path(@menu_item), notice: 'Ingredient was successfully deleted.'
  end

  private

  def recipe_params
    params.require(:recipe).permit(:quantity)
  end
end
