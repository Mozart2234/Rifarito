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
class Raffle < ApplicationRecord
  validates :name, :amount, :quantity, presence: true
  validates :quantity, numericality: true
end
