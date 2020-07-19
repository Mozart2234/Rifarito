# == Schema Information
#
# Table name: tickets
#
#  id         :bigint           not null, primary key
#  num        :integer
#  sold       :boolean          default(FALSE)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  buyer_id   :bigint
#  raffle_id  :bigint           not null
#
# Indexes
#
#  index_tickets_on_buyer_id   (buyer_id)
#  index_tickets_on_raffle_id  (raffle_id)
#
# Foreign Keys
#
#  fk_rails_...  (buyer_id => buyers.id)
#  fk_rails_...  (raffle_id => raffles.id)
#
class Ticket < ApplicationRecord
  validates :num, presence: true
  validates :num, uniqueness: { scope: :raffle_id }
  belongs_to :raffle
  belongs_to :buyer, optional: true
end
