FactoryBot.define do
  factory :ideas do
    body { Faker::Book.title }
    category_id { Faker::Sports::Football.player }
  end
end
