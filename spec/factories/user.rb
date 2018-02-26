FactoryBot.define do
  factory :user do
    username { 'test' }
    password { '123456' }
    email { 'test@test.com' }
  end
end
