FactoryBot.define do
  factory :review do
    store_name          { Faker::Name.initials(number: 2) }
    text                { Faker::Lorem.sentence(word_count: 3) }
    facility_id         { 2 }
    customer_base_id    { 2 }
    access_id           { 2 }
    prefectures_id      { 2 }
    bicycle_parking_id  { 2 }
    parking_lot_id      { 2 }
    crowded_time_id     { 2 }
    staff_id            { 2 }

    association :user
  end
end
