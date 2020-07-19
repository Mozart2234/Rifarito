FactoryBot.define do
  factory :raffle do
    name { Faker::FunnyName.name }
    quantity { Faker::Number.between(from: 1, to: 2000) }
    date_finish { "2020-07-19 09:14:13" }
    amount { "9.99" }
  end
end
