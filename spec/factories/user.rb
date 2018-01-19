FactoryBot.define do
  factory :user do
    username { Faker::Internet.user_name }
    password { Faker::Internet.password(4, 255) }
  end
end
