class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    if (@user = User.new(params[:user])).save
      redirect_to @user
    else
      render "new"
    end
  end

  def show
    @user = User.find(params[:id])
  end
end