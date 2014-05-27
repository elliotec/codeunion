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
Category.create(name: "Website")
Category.create(name: "Blog")
Category.create(name: "Game")
Category.create(name: "Video")
Category.create(name: "University")

Resource.create(name: "Rails Guides",
                body: "http://guides.rubyonrails.org/",
                language_id: 1,
                category_id: 3)

@user = User.create(email: "user@user.com",
                    password: "password",
                    moderator: false)

@katie = User.create(email: "katie@katie.com",
                    password: "password",
                    moderator: true)

@garrett = User.create(email: "garrett@garrett.com",
                    password: "password",
                    moderator: true)

@tyler = User.create(email: "tyler@tyler.com",
                    password: "password",
                    moderator: true)
