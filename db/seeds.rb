# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
# Create an author
tolkien = Author.where(name: 'J.R.R. Tolkien').first_or_create!(nationality: 'Canadian', dob: '07/07/1962', awards: 'Best Author Award', biography: 'This is a test bio', image_url: 'http://test.com')
paulsen = Author.where(name: 'Gary Pausen').first_or_create!(nationality: 'Canadian', dob: '07/07/1962', awards: 'Best Author Award', biography: 'This is a test bio', image_url: 'http://test.com')
rand = Author.where(name: 'Ayn Rand').first_or_create!(nationality: 'Canadian', dob: '07/07/1962', awards: 'Best Author Award', biography: 'This is a test bio', image_url: 'http://test.com')
card = Author.where(name: 'Orson Scott Card').first_or_create!(nationality: 'Canadian', dob: '07/07/1962', awards: 'Best Author Award', biography: 'This is a test bio', image_url: 'http://test.com')
shakespeare = Author.where(name: 'Gary Pausen').first_or_create!(nationality: 'Canadian', dob: '07/07/1962', awards: 'Best Author Award', biography: 'This is a test bio', image_url: 'http://test.com')
joe = Author.where(name: 'Joe').first_or_create!(nationality: 'Canadian', dob: '07/07/1962', awards: 'Best Author Award', biography: 'This is a test bio', image_url: 'http://test.com')
penn = Author.where(name: 'Matt Penn').first_or_create!(nationality: 'Canadian', dob: '07/07/1962', awards: 'Best Author Award', biography: 'This is a test bio', image_url: 'http://test.com')

# Create a book
hobbit = Book.where(title: 'The Hobbit').first_or_create(isbn: '65464654', author: tolkien, genre: 'Adventure', abstract: 'This is an adventure book', pages:455, image_cover_url: 'http://test.com', published_on:'07/07/1990', total_in_library:18, created_at: '07/07/1991', created_at: '07/07/1993' )
hatchet = Book.where(title: 'Hatchet').first_or_create(isbn: '65464655', author: paulsen, genre: 'Adventure', abstract: 'This is an adventure book', pages:455, image_cover_url: 'http://test.com', published_on:'07/07/1990', total_in_library:18, created_at: '07/07/1991', created_at: '07/07/1993' )
atlas = Book.where(title: 'Atlas Shrugged').first_or_create(isbn: '65464656', author: rand, genre: 'Adventure', abstract: 'This is an adventure book', pages:455, image_cover_url: 'http://test.com', published_on:'07/07/1990', total_in_library:18, created_at: '07/07/1991', created_at: '07/07/1993' )
ender = Book.where(title: "Ender's Game").first_or_create(isbn: '65464657', author: card, genre: 'Adventure', abstract: 'This is an adventure book', pages:455, image_cover_url: 'http://test.com', published_on:'07/07/1990', total_in_library:18, created_at: '07/07/1991', created_at: '07/07/1993' )
hamlet = Book.where(title: 'Hamlet').first_or_create(isbn: '65464658', author: paulsen, genre: 'Adventure', abstract: 'This is an adventure book', pages:455, image_cover_url: 'http://test.com', published_on:'07/07/1990', total_in_library:18, created_at: '07/07/1991', created_at: '07/07/1993' )
tale_of_joe = Book.where(title: 'The Tale of Joe').first_or_create(isbn: '65464659', author: joe, genre: 'Adventure', abstract: 'This is an adventure book', pages:455, image_cover_url: 'http://test.com', published_on:'07/07/1990', total_in_library:18, created_at: '07/07/1991', created_at: '07/07/1993' )
tale_of_matt = Book.where(title: 'The Tale of Matt').first_or_create(isbn: '65464660', author: penn, genre: 'Adventure', abstract: 'This is an adventure book', pages:455, image_cover_url: 'http://test.com', published_on:'07/07/1990', total_in_library:18, created_at: '07/07/1991', created_at: '07/07/1993' )
card2 = Book.where(title: 'Card Book Two').first_or_create(isbn: '65464661', author: card, genre: 'Adventure', abstract: 'This is an adventure book', pages:455, image_cover_url: 'http://test.com', published_on:'07/07/1990', total_in_library:18, created_at: '07/07/1991', created_at: '07/07/1993' )
tolkien2 = Book.where(title: 'Tolkien Book Two').first_or_create(isbn: '65464662', author: tolkien, genre: 'Adventure', abstract: 'This is an adventure book', pages:455, image_cover_url: 'http://test.com', published_on:'07/07/1990', total_in_library:18, created_at: '07/07/1991', created_at: '07/07/1993' )

# Create a user
matt = User.where(user_id: 'mpenn').first_or_create(name: 'Matt Penn', password_digest: 'password', admin: false, created_at: '04/07/2014')
joey = User.where(user_id: 'jfrank').first_or_create(name: 'Joe Frankie', password_digest: 'password', admin: false, created_at: '04/07/2014')
marie = User.where(user_id: 'mhan').first_or_create(name: 'Marie Han', password_digest: 'password', admin: true, created_at: '04/07/2014')


# Create a reservation
Reservation.first_or_create(reserved_on:04/10/2014, user: matt, book_id: hobbit, created_at: '04/19/2015')
Reservation.first_or_create(reserved_on:04/11/2014, user: matt, book_id: hatchet, created_at: '04/19/2015')
Reservation.first_or_create(reserved_on:04/12/2014, user: marie, book_id: atlas, created_at: '04/19/2015')
Reservation.first_or_create(reserved_on:04/13/2014, user: joe, book_id: atlas, created_at: '04/19/2015')
Reservation.first_or_create(reserved_on:04/14/2014, user: joe, book_id: tale_of_joe, created_at: '04/19/2015')
Reservation.first_or_create(reserved_on:04/15/2014, user: marie, book_id: hobbit, created_at: '04/19/2015')
