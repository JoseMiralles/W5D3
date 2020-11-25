# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
ShortenedUrl.destroy_all

user_1 = User.create!(email: 'abcd@gamil.com')
user_2 = User.create!(email: 'asdf@gmail.com')

# url_1 = ShortenedUrl.create!(long_url: 'google.com', user_id: 1 )
# url_2 = ShortenedUrl.create!(long_url: 'yahoo.com', user_id: 1 )
# url_3 = ShortenedUrl.create!(long_url: 'altavista.com', user_id: 2 )

# Use factory method instead
url_1 = ShortenedUrl.create(user_1, "microsoft.com")
url_2 = ShortenedUrl.create(user_1, "google.com")
url_3 = ShortenedUrl.create(user_1, "altavista.com")