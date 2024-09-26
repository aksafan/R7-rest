require 'faker'

FactoryBot.define do
  factory :member do |f|
    f.first_name { Faker::Name.first_name }
    f.last_name { Faker::Name.last_name }
    user
  end
end