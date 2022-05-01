FactoryBot.define do
  factory :user do
    name { "Chansey" }
    sequence(:email) { |n| "pokemon#{n}@pokemon.com" }
    password {"password"}
    password_confirmation { "password" }
  end
end