class CategoriesController < ApplicationController

  def index
    @categories = Category.all 
  end

  def show
    @category = Category.find(params[:id])
  end

  def new
    @category = Category.new 
  end

 def create
      Category.create(category_params)
      redirect_to categories_path
 end

 def destroy
    @category = Category.find(params[:id]).destroy
    redirect_to categories_path
  end
 
 private
 
 def category_params
   params.require(:category).permit(:name)
 end





end ## class end
