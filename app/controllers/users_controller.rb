class UsersController < ApplicationController

  def index
    @user = Users.all 
  end

  def show
    @user = User.find(params[:id])
  end



end ## class end
