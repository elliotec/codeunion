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
Language.create(name: "Other")

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
Resource.create(name: "Getting Started With Foundation",
                body: "http://foundation.zurb.com/docs/",
                language_id: 1,
                category_id: 3)
Resource.create(name: "Search with Sunspot",
                body: "http://railscasts.com/episodes/278-search-with-sunspot",
                language_id: 1,
                category_id: 6)
Resource.create(name: "Active Record Basics",
                body: "http://guides.rubyonrails.org/active_record_basics.html",
                language_id: 1,
                category_id: 3)
Resource.create(name: "Codecademy",
                body: "http://www.codecademy.com/dashboard",
                language_id: 7,
                category_id: 3)
Resource.create(name: "Stack Overflow",
                body: "http://stackoverflow.com",
                language_id: 7,
                category_id: 3)
Resource.create(name: "Code Fellows",
                body: "https://www.codefellows.org",
                language_id: 7,
                category_id: 2)
Resource.create(name: "Thinkful",
                body: "https://www.thinkful.com",
                language_id: 7,
                category_id: 3)
Resource.create(name: "How to be a Programmer: A Short, Comprehensive, and Personal Summary",
                body: "http://samizdat.mines.edu/howto/HowToBeAProgrammer.html#id2792906",
                language_id: 7,
                category_id: 4)
Resource.create(name: "Designer vs Developer: BE THE UNICORN",
                body: "http://www.slideshare.net/saracannon/wcatl2013",
                language_id: 7,
                category_id: 4)






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
