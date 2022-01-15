class MoviesController < ApplicationController
  def all_movies
    all = Movie.all
    render json: all
  end

  def a_silent_voice
    asv = Movie.find_by(title: "A Silent Voice")
    render json: asv
  end

  def demon_slayer
    ds = Movie.find_by(title: "Demon Slayer: Mugen Train")
    render json: ds
  end

  def your_name
    yn = Movie.find_by(title: "Your Name")
    render json: yn
  end
end
