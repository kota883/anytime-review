FactoryBot.define do
  factory :user do
    nickname                { Faker::Name.initials(number: 2) }
    email                   { Faker::Internet.free_email }
    password                { 'abc123' }
    password_confirmation   { password }
    age_id                  { 2 }
    gender_id               { 2 }
  end
end
