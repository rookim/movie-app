class MoviesController < ApplicationController
  def index
    all = Movie.all
    render json: all
  end

  def create
    movie = Movie.create(
      "title": params[:title],
      "year": params[:year],
      "plot": params[:plot],
      "director": params[:director]
      "english": params[:english]
    )
    render json: movie
  end

  def show
    id = params[:id]
    render json: Movie.find(id)
  end

  def update
    movie = Movie.find(params[:id])
    movie.title = params[:title] || movie.title
    movie.year = params[:year] || movie.year
    movie.plot = params[:plot] || movie.plot 
    movie.director = params[:director] || movie.director 
    movie.english = params[:english] || movie.english 
    movie.save

    render json: movie
  end

  def destroy
    movie = Movie.find(params[:id])
    movie.destroy

    render json: {"message": "Data for #{movie.title} has been destroyed...}"}
  end
end
