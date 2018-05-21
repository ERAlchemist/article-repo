# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

10.times do |x|
    Article.create!(topic_id: 1, sub_topic: "frameworks", link: "https://google.com", description: "tips and tricks for bootstrap 4")
    Article.create!(topic_id: 2, sub_topic: "Services", link: "stackoverflow.com", description: "how to properly write Angular services")
end
    
