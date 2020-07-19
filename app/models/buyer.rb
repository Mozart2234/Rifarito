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
class Buyer < ApplicationRecord
end
