class ActorSerializer < ActiveModel::Serializer
  attributes :id, :gender, :first_name, :last_name, :known_for, :movie_id
end
