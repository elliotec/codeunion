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

@kayla = User.create(email: "kaylas.email.address@gmail.com",
                     password: "password",
                     moderator: true)

@user = User.create(email: "user@user.com",
                    password: "password",
                    moderator: false)
