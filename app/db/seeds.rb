# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

u1 = User.create!(name: 'bob', email: 'gmail.com', password: 'password1')

u2 = User.create!(name: 'dave', email: 'dave@dave.com', password: 'password2')

post1 = Post.create!(title: 'awesome post', body: 'blah blah blah words of wisdom', url: 'http://www.cats.org.uk/uploads/branches/211/5507692-cat-m.jpg', user_id: u1.id)