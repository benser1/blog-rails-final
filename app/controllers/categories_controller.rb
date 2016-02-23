class CategoriesController < ApplicationController

  def index
    @categories = Category.all 
  end

  def show
    cat_id
  end

  def new
    @category = Category.new 
  end

 def create
    Category.create(category_params)
    redirect_to categories_path
 end

 def destroy
    cat_id.destroy
    redirect_to categories_path
  end
 
 private
 
 def category_params
   params.require(:category).permit(:name)
 end

 def cat_id
   @category = Category.find(params[:id])
 end





end ## class end
