# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

if Rails.env.development?
  Book.find_or_create_by(title: "How to play guitar") do |book|
    book.description = "Learn to play guitar in 24 hours"
  end
  Book.find_or_create_by(title: "How to be a good developer") do |book|
    book.description = "What you need to know before your friends start envying you"
  end
  Book.find_or_create_by(title: "How to live in India") do |book|
    book.description = "Things for foreighers to know before entering India"
  end
  Book.find_or_create_by(title: "Photography") do |book|
    book.description = "The ins and outs of photography, to the point"
  end
end
