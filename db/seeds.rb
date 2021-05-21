# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

if Rails.env.development? # Only run in development environment!
  unless Admin.exists?(email: 'admin@the-deluxe-venue.com')
    admin = Admin.create(email: 'admin@the-deluxe-venue.com', password: 'secret', password_confirmation: 'secret')
  end

  if Event.count.zero?
    (-5..15).each_with_index do |days, index|
      Event.create(performer: "Performer #{index + 1}", when: DateTime.now + days, content: "This is the event content for Performer #{index + 1}")
    end
  end
end
