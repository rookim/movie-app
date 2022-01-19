class ActorsController < ApplicationController
  def index
    render json: Actor.all
  end

  def create
    actor = Actor.create(
      "first_name": params[:first_name],
      "last_name": params[:last_name],
      "known_for": params[:known_for],
      "gender": params[:gender],
      "age": params[:age]
    )
    render json: actor.as_json
  end

  def show
    id = params[:id]
    render json: Actor.find(id)
  end

  def update
    id = params[:id]
    actor = Actor.find(id)
    actor.first_name = params[:first_name] || actor.first_name
    actor.last_name = params[:last_name] || actor.last_name
    actor.known_for = params[:known_for] || actor.known_for
    actor.gender = params[:gender] || actor.gender
    actor.age = params[:age] || actor.age
    actor.save

    render json: actor.as_json
  end

  def destroy
    actor = Actor.find(params[:id])
    actor.destroy

    render json: {"message": "Data ##{actor.id} has been destroyed....."}
  end
end
