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
#  quantity         :integer          default(1)
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
  has_one_attached :voucher

  belongs_to :raffle
  has_many :tickets, dependent: :destroy
  validates :quantity, :name, :status, :total, :type_of_payment, presence: true
  validates :code, uniqueness: { scope: :raffle_id }

  before_validation :gen_data

  enum status: {
    pending: 0,
    verified: 1
  }

  enum type_of_payment: {
    bcp: 0,
    bbva: 1,
    yape: 2
  }

  def gen_data
    o = [('A'..'Z'), (0..9)].map(&:to_a).flatten
    string = (0...4).map { o[rand(o.length)] }.join
    self.code = string
    self.total = raffle.amount * quantity
  end
end
