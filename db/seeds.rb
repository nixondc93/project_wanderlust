# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
    Post.destroy_all

    Post.create(title: 'Sunshine', content: 'Its always sunny here!', user_id: '1', city: 'Philadelphia')
    Post.create(title: 'Rain', content: 'Its always rainy here!', user_id: '2', city: 'Seatle')
    Post.create(title: 'Gloomy', content: 'Its always gloomy here!', user_id: '3', city: 'West Orange')
    Post.create(title: 'Happy', content: 'Its always sunny here!', user_id: '4', city: 'San Diego')
    Post.create(title: 'Good Food', content: 'Best pizza here!', user_id: '5', city: 'New York')
    Post.create(title: 'Bad Food', content: 'Crappy and expensive pizza!', user_id: '6', city: 'San Francisco')
    Post.create(title: 'Mexican', content: 'Best Mexican food here!', user_id: '7', city: 'San Francisco')
    Post.create(title: 'Sushi', content: 'Banging sushi!', user_id: '8', city: 'Flagstaff')
    Post.create(title: 'Stuffy', content: 'Its always hot here!', user_id: '1', city: 'Topeaka')
    Post.create(title: 'Unfortunate', content: 'I never win the lottery here', user_id: '2', city: 'North Caldwell')
    Post.create(title: 'Mom', content: 'My mommy lives here!', user_id: '3', city: 'West Orange')
    Post.create(title: 'Cat', content: 'I adopted my cat here!', user_id: '4', city: 'Manhatten')
    Post.create(title: 'Mustang', content: 'I bought my car here!', user_id: '5', city: 'Oakland')
    Post.create(title: 'Cops', content: 'I got arrested here!', user_id: '6', city: 'Houston')
    Post.create(title: 'Shopping', content: 'Great deals here!', user_id: '7', city: 'Tokyo')
    Post.create(title: 'Seeds', content: 'Seeding is fun!', user_id: '8', city: 'San Francisco')
