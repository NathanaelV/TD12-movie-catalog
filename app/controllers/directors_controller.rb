class DirectorsController < ApplicationController
  def index
    @directors = Director.all
  end

  def show
    @director = Director.find(params[:id])
  end
  
  def new
    @director = Director.new(params[:id])
  end

  def create
    @director = Director.new(params.required(:director).permit(:name, :birthdate, :nationality, :genre_id))

    return redirect_to @director if @director.save

    render :new
  end

  def edit
    @director = Director.find(params[:id])
  end
  
end
