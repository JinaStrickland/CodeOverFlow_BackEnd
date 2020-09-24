# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


Answer.destroy_all
Company.destroy_all
Question.destroy_all
User.destroy_all

languages = ["ruby", "rails", "javascript", "react", "python"]


code_over_flow = Company.create(name: "CodeOverFlow")

2.times do
    User.create(
        username: Faker::Internet.unique.username,
        email: Faker::Internet.unique.email, 
        password_digest: "abcd", 
        company: code_over_flow)
end

5.times do
    Question.create(
        title: Faker::Lorem.paragraph(sentence_count: 2),
        body: Faker::Lorem.paragraph(sentence_count: 6),
        tag: languages.sample,
        user: User.all.sample
    )
end

5.times do
    Answer.create(
        body: Faker::Lorem.paragraph(sentence_count: 4), 
        user_id: User.all.sample.id, 
        question_id: Question.all.sample.id)
end