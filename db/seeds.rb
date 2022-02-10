# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
6.times do |i|
	user = User.create(name: "User ##{i}", photo: 'https://upload.wikimedia.org/wikipedia/commons/thumb/6/6e/Breezeicons-actions-22-im-user.svg/1200px-Breezeicons-actions-22-im-user.svg.png', bio: "A bio.")
	4.times do |j|
		post = Post.create(title: "this is a post", text: "Lorem Ipsum Dolmet Lorem Ipsum Dolor AmetLorem Ipsum Dolor AmetLorem Ipsum Dolor AmetLorem Ipsum Dolor Amet", user_id: 1)
		6.times do |j|
			Comment.create(text: "Comment ##{j}", post_id: 1, user_id: 1)
		end
	end
end