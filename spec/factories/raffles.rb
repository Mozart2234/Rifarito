# == Schema Information
#
# Table name: raffles
#
#  id          :bigint           not null, primary key
#  amount      :decimal(, )
#  date_finish :datetime
#  name        :string
#  quantity    :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#
FactoryBot.define do
  factory :raffle do
    name { Faker::FunnyName.name }
    quantity { Faker::Number.between(from: 1, to: 2000) }
    date_finish { Date.current + 10.days }
    amount { Faker::Number.between(from: 1, to: 100) }
  end
end
