FactoryBot.define do
  factory :offer do
    advertiser_name { Faker::Company.name }
    url { Faker::Internet.url }
    description { Faker::Lorem.sentence(word_count: 8) }
    starts_at { DateTime.now - 3.hours }
    ends_at nil
    premium { Faker::Boolean.boolean }
    advertiser
  end
end