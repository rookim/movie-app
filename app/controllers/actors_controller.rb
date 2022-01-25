class ActorsController < ApplicationController
  def index
    actors = Actor.order(age: :desc)
    render json: actors
  end

  def create
    actor = Actor.new(
      "first_name": params[:first_name],
      "last_name": params[:last_name],
      "known_for": params[:known_for],
      "gender": params[:gender],
      "age": params[:age],
      "movie_id": params[:movie_id]
    )
    if actor.save
      render json: actor.as_json
    else
      render json: {errors: actor.errors.full_messages}, status: :unprocessable_entity
    end
  end

  def show
    render json: Actor.find(params[:id])
  end

  def update
    actor = Actor.find(params[:id])
    actor.first_name = params[:first_name] || actor.first_name
    actor.last_name = params[:last_name] || actor.last_name
    actor.known_for = params[:known_for] || actor.known_for
    actor.gender = params[:gender] || actor.gender
    actor.age = params[:age] || actor.age
    actor.movie_id = params[:movie_id] || actor.movie_id
    if actor.save
      render json: actor.as_json
    else
      render json: {errors: actor.errors.full_messages}, status: :unprocessable_entity
    end
  end

  def destroy
    actor = Actor.find(params[:id])
    actor.destroy

    render json: {"message": "Data ##{actor.id} has been destroyed....."}
  end

end