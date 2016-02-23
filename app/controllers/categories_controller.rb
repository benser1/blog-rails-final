class CategoriesController < ApplicationController

  def index
    @categories = Category.all 
    unless current_user.admin?
      redirect_to root_path, alert: "Not allowed, bitch"
    end
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
 
 private
 
 def category_params
   params.require(:category).permit(:name, :category_id)
 end





end ## class end
