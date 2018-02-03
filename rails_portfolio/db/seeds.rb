# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
arr = ("a".."z").to_a
rand(15).times {|topic| tar = []; rand(6).times {tar << arr[rand(arr.length)]}; Topic.create!(title: "#{tar.join("")} #{topic} Topic")}
rand(25).times { |blog| Blog.create!(title: "My Blog #{blog}!", body: "#Test Content", topic_id: Topic.last.id) }
rand(5).times { |skill| Skill.create!(title: "My Skill #{skill}!", percent_utilized: rand(100)) }

ports = 10
ports.times do |p|
    Portfolio.create!(
            title: "Title #{p}",
            subtitle: p < ports - 1 ? "Subtitle #{p}": "Subwoofer",
            body: "Body #{p} stuff!!!!",
            main_image: "http://via.placeholder.com/600x400",
            thumb_image: "http://via.placeholder.com/350x200",
        )
end

3.times { |tech| Portfolio.last.technologies.create!(name: "Technology #{tech}") }