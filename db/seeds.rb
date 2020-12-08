# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

post = Post.new(title: "Shovel Knight", content: "Shovel Knight is hard")
post.save
post = Post.new(title: "Lethal League", content: "Super Intense")
post.save
user = User.new(name: "Oscar", email: "o@example.com")
user.save
user = User.new(name: "Ryker", email: "r@example.com")
user.save
comment = Comment.new(content: "Agreed", post_id: "1")
comment.save
comment = Comment.new(content: "I think we both just suck", post_id: "2")
comment.save
comment = Comment.new(content: "I love that game", post_id: "3")
comment.save
comment = Comment.new(content: "Oh my gosh I love that game too", post_id: "3")
comment.save
