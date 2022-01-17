class ActorsController < ApplicationController
  def one_actor
    id = params[:id]
    actor = Actor.find_by(id: id)
    render json: actor
  end
end
