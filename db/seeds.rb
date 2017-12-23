User.create(
  email: "test@test.com",
  password: "123456"
)

10.times do
  User.create!(
    email: Faker::Internet.email,
    password: "123456"
  )
end

Game.create!(
  games: ["Clash Royale"]
)

ClashRoyale.create!(
  game_id: Game.first.id
)

Forum.create!(
  clash_royale_id: ClashRoyale.first.id
)

Theme.create!(
  forum_id: Forum.first.id
)
Post.create!(
  user_id: User.first.id,
  theme_id: Theme.first.id,
  content: "Hello my first post"
)
