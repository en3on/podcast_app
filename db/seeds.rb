# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts 'Start of seeding...'

10.times do
  params = {
    name: Faker::Music.album,
    genre: Faker::Book.genre,
    image: Faker::LoremFlickr.image
  }

  podcast = Podcast.create(params)

  puts "Creating Podcast #{podcast.name}"
  podcast.save

  rand(1..10).times do

    title = Faker::Music.album

    params = {
      title: title,
      show_notes: Faker::Lorem.paragraph,
      mp3_file: "/podcasts/season1/#{title}.mp3",
      rating: rand(1..10)
    }

    episode = podcast.episodes.create(params)
    puts "Creating Episode #{episode.title} for #{podcast.name}"
  end
  puts
end

puts 'Seeding over'
