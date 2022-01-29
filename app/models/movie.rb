class Movie < ApplicationRecord
  validates :title, :year, :plot, :director, :english, presence: true
  validates :year, numericality: { only_integer: true, greater_than: 1887 }
  validates :plot, length: {maximum: 1000, too_long: "only allows for a maximum of #{count} characters"}

  has_many :actors
  has_many :movie_genres
  has_many :genres, through: :movie_genres

  # instance method. add self if you want to make method class-widegit sta
  def genre_names
    genres.map { |genre| genre["name"] }
  end
end
