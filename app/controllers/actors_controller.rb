class ActorsController < ApplicationController
  def index
    render json: Actor.all
  end

  def create
    
  end

  def show
    id = params[:id]
    render json: Actor.find(id)
  end
end
