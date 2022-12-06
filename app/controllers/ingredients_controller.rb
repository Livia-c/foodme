class IngredientsController < ApplicationController
  before_action :check_params, only: %i[create update]
  before_action :set_ingredient, only: %i[show edit update destroy]

  def index
    @ingredients = Ingredient.all
    @ingredient_vegetables = Ingredient.where(category: "vegetable").order(:created_at)
    @ingredient_fruits = Ingredient.where(category: "fruit").order(:created_at)
    @ingredient_carbohydrates = Ingredient.where(category: "carbohydrate").order(:created_at)
    @ingredient_proteins = Ingredient.where(category: "protein").order(:created_at)
    @ingredient_dairys = Ingredient.where(category: "dairy").order(:created_at)
    @ingredient_spices = Ingredient.where(category: "spice").order(:created_at)
    @ingredient_others = Ingredient.where(category: "other").order(:created_at)
  end

  def show
  end

  def new
    @ingredient = Ingredient.new
  end

  def create
    @ingredient = Ingredient.new(ingredient_params)
    if @ingredient.save
      redirect_to ingredients_path, notice: "Ingredient was successfully created."
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
  end

  def update
    if @ingredient.update(ingredient_params)
      # redirect_to @ingredient, notice: "Ingredient was successfully updated."
      respond_to do |format|
        format.html { redirect_to ingredients_path }
        format.text { render partial: "ingredients/ingredient_infos", locals: { ingredient: @ingredient }, formats: [:html] }
      end
    else
      render :edit, status: :unprocessable_entity
    end

  end

  def destroy
    @ingredient.destroy
    redirect_to ingredients_path, notice: "Ingredient was successfully deleted."
  end

  private

  def set_ingredient
    @ingredient = Ingredient.find(params[:id])
  end

  def check_params
    # params[:ingredient][:name].downcase!
    params.dig(:ingredient, :name)&.downcase
    # params[:ingredient][:name]
  end

  def ingredient_params
    params.require(:ingredient).permit(:name, :quantity, :unit, :category, photos: [])
  end
end
