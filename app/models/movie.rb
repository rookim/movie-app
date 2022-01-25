class Movie < ApplicationRecord
  validates :title, :year, :plot, :director, :english, presence: true
  validates :year, numericality: { only_integer: true, greater_than: 1887 }
  validates :plot, length: {maximum: 1000, too_long: "only allows for a maximum of #{count} characters"}

  has_many :actors
end
