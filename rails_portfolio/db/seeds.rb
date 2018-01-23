# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
arr = (a..z).to_a
rand(25).times { |blog| Blog.create!(title: "My Blog #{blog}!", body: "#Test Content") }
rand(5).times { |skill| Skill.create!(title: "My Skill #{skill}!", percent_utilized: rand(100)) }

rand(9).times do |p|
    Portfolio.create!(
        title: "Title #{p}",
        subtitle: "Subtitle #{p}"
        )
end
