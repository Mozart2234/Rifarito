FactoryBot.define do
  factory :ticket do
    num { Faker::Number.between(from: 1, to: 2000) }
    raffle
  end
end
