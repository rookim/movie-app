class MoviesController < ApplicationController
  def all_movies
    all = Movies.all
    render json: all
  end
end
