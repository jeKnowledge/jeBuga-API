FactoryBot.define do
  factory :game do
    name { Faker::Company.name }
    thumbnail { Faker::Internet.domain_name }
    background_image { Faker::Internet.domain_name }
  end
end
