# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

u1 = User.create!(name: 'Bob', email: 'bob@email', password: 'password')

u2 = User.create!(name: 'David', email: 'dave@email.com', password: 'password')

u3 = User.create!(name: 'Dan', email: 'dan@email.com', password: 'password')

u1.posts.create!(title: 'first post', body: 'This is my first painting', url: 'http://unhyphenatedamerica.org/wp-content/uploads/2015/02/abstract-art-mother-earth-1.jpg', user_id: u1.id)

u1.posts.create!(title: 'painting', body: 'I experimented with different colours for this painting', url: 'http://digipraim.com/data_images/out/3/587178-picture-in-the-park-art.jpg', user_id: u1.id)

u2.posts.create!(title: 'First painting', body: 'This is a painting I worked on during the Christmas holiday', url: 'http://4.bp.blogspot.com/-okyzluX_zlw/UR6pt0fMp9I/AAAAAAAAAPk/bbeepDoIQDo/s1600/tumblr_mhewiwW6ib1r3wk1zo2_500-1.jpg', user_id: u2.id)

u3.posts.create!(title: 'Zebra', body: 'This is an idea I have. Should I continue with this?', url: 'http://img07.deviantart.net/d8a2/i/2010/165/b/2/zebra_of_a_different_color_by_art_siren717.jpg', user_id: u3.id)

u3.posts.create!(title: 'New Painting', body: 'This is another painting I am working on.', url: 'https://katiebreitung.files.wordpress.com/2012/11/flat550x550075f.jpg', user_id: u3.id)