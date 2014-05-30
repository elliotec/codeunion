# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

ruby = Language.create(name: "Ruby")
python = Language.create(name: "Python")
javascript = Language.create(name: "Javascript")
php = Language.create(name: "PHP")
objectivec = Language.create(name: "Objective-C")
java = Language.create(name: "Java")
other = Language.create(name: "Other")

book = Category.create(name: "Book")
bootcamp = Category.create(name: "Bootcamp")
website = Category.create(name: "Website")
blog = Category.create(name: "Blog")
game = Category.create(name: "Game")
video = Category.create(name: "Video")
university = Category.create(name: "University")

Resource.create(name: "Rails Guides",
                body: "http://guides.rubyonrails.org/",
                language: ruby,
                category: website)
Resource.create(name: "Getting Started With Foundation",
                body: "http://foundation.zurb.com/docs/",
                language: ruby,
                category: website)
Resource.create(name: "Search with Sunspot",
                body: "http://railscasts.com/episodes/278-search-with-sunspot",
                language: ruby,
                category: video)
Resource.create(name: "Active Record Basics",
                body: "http://guides.rubyonrails.org/active_record_basics.html",
                language: ruby,
                category: website)
Resource.create(name: "Codecademy",
                body: "http://www.codecademy.com/dashboard",
                language: other,
                category: website)
Resource.create(name: "Stack Overflow",
                body: "http://stackoverflow.com",
                language: other,
                category: website)
Resource.create(name: "Code Fellows",
                body: "https://www.codefellows.org",
                language: other,
                category: bootcamp)
Resource.create(name: "Thinkful",
                body: "https://www.thinkful.com",
                language: other,
                category: website)
Resource.create(name: "How to be a Programmer: A Short, Comprehensive, and Personal Summary",
                body: "http://samizdat.mines.edu/howto/HowToBeAProgrammer.html#id2792906",
                language: other,
                category: blog)
Resource.create(name: "Designer vs Developer: BE THE UNICORN",
                body: "http://www.slideshare.net/saracannon/wcatl2013",
                language: other,
                category: blog)

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
