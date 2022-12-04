if @recipe.persisted?
  json.form render(partial: "recipes/add_ingredient", formats: :html, locals: {item: @menu_item, recipe: Recipe.new})
  json.inserted_item render(partial: "menu_items/display_recipe", formats: :html, locals: {recipe: @recipe})
else
  json.form render(partial: "recipes/add_ingredient", formats: :html, locals: {item: @menu_item,  recipe: @recipe})
end
