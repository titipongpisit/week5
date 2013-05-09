class MoviesController < ApplicationController

  def destroy
    m = Movie.find_by_id(params["id"])
    m.destroy
    redirect_to "/movies"
  end

  def edit
    @movie = Movie.find_by_id(params["id"])
  end

  def update
    @movie = Movie.find_by_id(params["id"])
    @movie.title = params[:title]
    @movie.year = params[:year]
    @movie.save
    redirect_to "/movies"
  end

  def create
    @movie = Movie.new
    @movie.title = params[:title]
    @movie.year = params[:year]
    @movie.save
    redirect_to "/movies"
  end

  def index
    @movies = Movie.all
  end

  def show
    @movie = Movie.find_by_id(params["id"])
  end

  def new

  end
end
