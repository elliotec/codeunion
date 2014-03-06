# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Language.create(name: "Ruby")
Language.create(name: "Python")
Language.create(name: "Javascript")
Language.create(name: "PHP")
Language.create(name: "Objective-C")
Language.create(name: "Java")

Category.create(name: "Book")
Category.create(name: "Bootcamp")
Category.create(name: "Blog")
Category.create(name: "Game")
Category.create(name: "Video")
Category.create(name: "University")


@kayla = User.create(email: "kaylas.email.address@gmail.com",
                     password: "password",
                     moderator: true)

@mike = User.create(email: "elliotecweb@gmail.com",
                    password: "happiness",
                    moderator: true)

@john = User.create(email: "johncjensen@hotmail.com",
                    password: "password",
                    moderator: true)

@joel = User.create(email: "joel@joel.com",
                    password: "password",
                    moderator: true)

@user = User.create(email: "user@user.com",
                    password: "password",
                    moderator: false)


require 'ffaker'


100.times do
  Resource.new.tap do |p|
    p.name = Faker::HipsterIpsum.sentence(1)
    p.body = Faker::HipsterIpsum.paragraph
    p.language_id = rand(1...6)
    p.category_id = rand(1...6)
    p.save!
  end
end
