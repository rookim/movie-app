# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

actor = Actor.new({ first_name: "Benedict", last_name: "Cumberbatch", known_for: "Sherlock" })
actor.save

# require "ffaker"

# first = FFaker::Name.first_name
# last = FFaker::Name.last_name
# known = FFaker::Movie.title

# actor = Actor.create({ first_name: first, last_name: last, known_for: known })

movie = Movie.create(title: "A Silent Voice", year: 2016, plot: "High school student Shoya has every intention of killing himself, but changes his mind at the very last minute. A flashback reveals Shoya in 6th grade relentlessly bullying a deaf girl named Shoko. When word of the bullying reaches the principal, Shoya is singled out by everyone else as the only culprit. THe bullying originally targeted at Shoko is now directed at Shoya. Shoya becomes an outcast throughout middle and high school for his reputation as a bully and as a result, he is a depressed loner unable to look at others in the eyes.")
