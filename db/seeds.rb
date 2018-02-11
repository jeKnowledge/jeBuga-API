User.create!(
  username: "test",
  password: "123456"
)

5.times do
  User.create!(
    username: Faker::Internet.user_name(4..10),
    password: "123456"
  )
end

Game.create!(
  name: "Clash Royale"
)

Forum.create!(
  game_id: 1
)

Theme.create!(
  name: "Cool Stuff",
  forum_id: 1,
  user_id: 1
)

5.times do
  Post.create!(
    user_id: User.limit(User.count).order("RANDOM()").first.id,
    theme_id: 1,
    title: Faker::Lorem.sentence(3, true, 5),
    content: Faker::Lorem.paragraph(3, true, 5),
    upvotes: Faker::Number.number(2),
    downvotes: Faker::Number.number(2)
  )
end

10.times do
  Comment.create!(
    user_id: User.limit(User.count).order("RANDOM()").first.id,
    post_id: Post.limit(Post.count).order("RANDOM()").first.id,
    content: Faker::Lorem.paragraph(2, true, 3),
    upvotes: Faker::Number.number(2),
    downvotes: Faker::Number.number(2)
  )
end
