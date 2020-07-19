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
require 'rails_helper'

RSpec.describe Ticket, type: :model do
  describe '#validations' do
    it { should validate_presence_of(:num) }
    it { should validate_presence_of(:sold) }
  end

  describe '#relations' do
    it { should belong_to(:raffle) }
  end
end
