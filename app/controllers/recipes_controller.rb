class RecipesController < ApplicationController
  def create
    @recipe = Recipe.new(recipe_params)
    @menu_item = MenuItem.find(params[:menu_item_id])
    @ingredient = Ingredient.find(params.dig(:recipe, :ingredient))
    @recipe.ingredient = @ingredient
    @recipe.menu_item = @menu_item
    respond_to do |format|
      if @recipe.save
        format.html { redirect_to menu_items_path, notice: 'Ingredient added' }
        format.json # Follow the classic Rails flow and look for a create.json view
      else
        format.html { render "menu_items/show", status: :unprocessable_entity }
        format.json # Follow the classic Rails flow and look for a create.json view
      end
    end
  end

  def destroy
    @recipe = Recipe.find(params[:id])
    @menu_item = @recipe.menu_item
    @recipe.destroy
    head :ok
  end

  private

  def recipe_params
    params.require(:recipe).permit(:quantity)
  end
end
