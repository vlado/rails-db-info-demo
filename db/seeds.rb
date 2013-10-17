# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

require 'faker'

if User.count == 0
  20.times do
    User.create(name: Faker::Name.name, email: Faker::Internet.email, admin: [true, false].sample)
  end
end


if Post.count == 0
  User.all.each do |user|
    n = rand(5) + 1
    n.times do
      Post.create(user: user, title: Faker::Lorem.words.join(' '), body: Faker::Lorem.paragraph)
    end
  end
end
