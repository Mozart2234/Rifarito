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
  attribute :status, :integer, default: 0

  belongs_to :raffle
  has_many :tickets
  validates :code, :name, :status, :total, :type_of_payment, presence: true

  enum status: {
    pending: 0,
    verified: 1
  }

  enum type_of_payment: {
    bcp: 0,
    bbva: 1,
    yape: 2
  }
end
