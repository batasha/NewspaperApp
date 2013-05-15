class NewspapersController < ApplicationController
  def index
    @newspapers = Newspaper.all
  end

  def new
    @newspaper = Newspaper.new
  end

  def create
    if (@newspaper = Newspaper.new(params[:newspaper])).save
      redirect_to @newspaper
    else
      render 'new'
    end
  end

  def show
    @newspaper = Newspaper.find(params[:id])
  end
end