class ActorSerializer < ActiveModel::Serializer
  attributes :id, :gender, :first_name, :last_name, :known_for, :movie_id, :movie_plot

  # belongs_to :movie
end
