# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

Course.create(
    name: "Fullstack G486"
)

User.create([{
    name: Faker::Games::Zelda.character,
    avatar: Faker::Avatar.image, 
    email: "kztempus@gmail.com",
    password: "123123",
    password_confirmation: "123123",
    course_id: 1
},{
    name: Faker::Games::Zelda.character,
    avatar: Faker::Avatar.image, 
    email: "asdasd@gmail.com",
    password: "123123",
    password_confirmation: "123123",
    course_id: 1
}])

50.times do
    Comment.create(
        content: Faker::Games::Zelda.item, 
        user_id: Random.rand(1..2)
    )
end