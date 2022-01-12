class ActorsController < ApplicationController
  def display_single_actor
    id = params[:id]
    actor = Actor.find_by(id: id)
    render json: actor
  end
end
