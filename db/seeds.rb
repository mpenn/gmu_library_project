# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
# Create an author
tolkien = Author.where(name: 'J.R.R. Tolkien').first_or_create!(nationality: 'Canadian', dob: '07/07/1962', awards: 'Best Author Award', biography: 'This is a test bio', image_url: 'http://test.com')

# Create a book
Book.where(title: 'The Hobbit').first_or_create(isbn: '65464654', author: tolkien, author_id)
