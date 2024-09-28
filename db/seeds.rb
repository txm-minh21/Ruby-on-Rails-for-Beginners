# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

User.create(
  email: 'admin@gmail.com',
  name: 'test',
  password: 'password',
  password_confirmation: 'password',
  role: User.roles[:admin])
User.create(email: 'rails@gmail.com', name: 'rails', password: 'password', password_confirmation: 'password')
User.create(email: 'angular@gmail.com', name: 'angular', password: 'password', password_confirmation: 'password')

10.times do |x|
  post = Post.create(title: "Title #{x}", body: "Body #{x} Words go here", user_id: User.first.id)

  5.times do |y|
    Comment.create(post_id: post.id, user_id: User.second.id, body: "Comment #{y}")
  end
end