class UsersController < ApplicationController
  def new
    @title = "Sign Up"
    @user = User.new
  end
  
  def show
    @user = User.find(params[:id])
    @title = @user.name + "<script>"
  end
  
  def create
    @user = User.new(params[:user])
   
    if @user.save
        redirect_to @user, :flash => {:success => "Welcome to the Sample App!" }
    else
        render 'new'
        @title = "Sign Up"
    end
  end
end
