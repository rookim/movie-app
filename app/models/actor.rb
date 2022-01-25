class Actor < ApplicationRecord
  validates :first_name, length: { minimum: 2 }
  validates :last_name, length: { minimum: 2 }
  validates :known_for, presence: true
  validates :age, presence: true, numericality: { greater_than: 13 }

  belongs_to :movie

  def movie_plot
    movie = Movie.find(movie_id)
    movie.plot
  end
end
