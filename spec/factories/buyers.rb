# == Schema Information
#
# Table name: buyers
#
#  id               :bigint           not null, primary key
#  code             :string
#  code_operation   :string
#  date_of_payment  :datetime
#  date_of_verified :datetime
#  name             :string
#  phone_number     :string
#  status           :integer
#  total            :decimal(, )
#  type_of_payment  :integer
#  voucher          :string
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#  raffle_id        :bigint           not null
#
# Indexes
#
#  index_buyers_on_raffle_id  (raffle_id)
#
# Foreign Keys
#
#  fk_rails_...  (raffle_id => raffles.id)
#
FactoryBot.define do
  factory :buyer do
    name { Faker::Name.name }
    phone_number { Faker::PhoneNumber.phone_number }
    status { Buyer.statuses.keys.sample }
    total { Faker::Number.between(from: 1, to: 100) }
    code { Faker::Alphanumeric.alphanumeric(number: 4, min_alpha: 2, min_numeric: 2) }
    type_of_payment { Buyer.type_of_payments.keys.sample }
    date_of_payment { Date.current }
    date_of_verified { Date.current }
    voucher { "" }
    code_operation { Faker::Alphanumeric.alpha(number: 10) }
    raffle
    buyer
  end
end
