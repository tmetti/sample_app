class UsersController < ApplicationController
  def new
    @title = "New Users"
  end
  
  def show
    @user = User.find(params[:id])
  end
end
