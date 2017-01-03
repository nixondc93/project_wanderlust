# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
    Post.create(title: 'Sunshine', content: 'Its always sunny here!', user_id: '1')
    Post.create(title: 'Rain', content: 'Its always rainy here!', user_id: '2')
    Post.create(title: 'Gloomy', content: 'Its always gloomy here!', user_id: '3')
    Post.create(title: 'Happy', content: 'Its always sunny here!', user_id: '4')
    Post.create(title: 'Good Food', content: 'Best pizza here!', user_id: '5')
    Post.create(title: 'Bad Food', content: 'Crappy and expensive pizza!', user_id: '6')
    Post.create(title: 'Mexican', content: 'Best Mexican food here!', user_id: '7')
    Post.create(title: 'Sushi', content: 'Banging sushi!', user_id: '8')
