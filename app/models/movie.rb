class Movie < ApplicationRecord
  validates :title, :year, :plot, :director, :english, presence: true
  validates :year, numericality: { only_integer: true, greater_than: 1887 }
  validates :plot, length: { maximum: 500, too_long: "only allows for a maximum of #{count} characters."}
end
