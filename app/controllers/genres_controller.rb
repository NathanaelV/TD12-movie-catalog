class GenresController < ApplicationController
  def index
    @genres = Genre.all
  end

  def show
    @genre = Genre.find(params[:id])
    @movies = Movie.where(genre: @genre).to_a
  end

  def new
    @genre = Genre.new
  end

  def create
    @genre = Genre.new(params.required(:genre).permit(:name))

    return redirect_to @genre if @genre.save

    render :new
  end

  def edit
    @genre = Genre.find(params[:id])
  end

  def update
    @genre = Genre.find(params[:id])

    return redirect_to @genre if genre_update?

    render :edit
  end

  private

  def genre_update?
    @genre.update(params.required(:genre).permit(:name))
  end
end
