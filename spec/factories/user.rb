require 'faker'

FactoryBot.define do

  factory :user do
    email 'example3@email.com'
    password '123test'
  end

  factory :random_user, class: User do
    email {Faker::Internet.email}
    password {Faker::Internet.password}
  end
end
