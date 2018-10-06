Movie.destroy_all

100.times do |index|
  Movie.create!(title: Faker::Lorem.sentence(3, false, 0).chop,
                director: Faker::Name.name,
                storyline: Faker::Lorem.paragraph,
                watched_on: Faker::Time.between(4.months.ago, 1.week.ago))
end

p "Created #{Movie.count} movies"
