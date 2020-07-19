# == Schema Information
#
# Table name: tickets
#
#  id         :bigint           not null, primary key
#  num        :integer
#  sold       :boolean          default(TRUE)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  raffle_id  :bigint           not null
#
# Indexes
#
#  index_tickets_on_raffle_id  (raffle_id)
#
# Foreign Keys
#
#  fk_rails_...  (raffle_id => raffles.id)
#
class Ticket < ApplicationRecord
  validates :num, :sold, presence: true
  belongs_to :raffle
end
