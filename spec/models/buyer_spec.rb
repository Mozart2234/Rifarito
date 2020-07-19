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
require 'rails_helper'

RSpec.describe Buyer, type: :model do
  describe '#validations' do
    it { should validate_presence_of(:name) }
    it { should validate_presence_of(:status) }
    it { should validate_presence_of(:total) }
    it { should validate_presence_of(:type_of_payment) }
    it { should validate_presence_of(:quantity) }
  end

  describe '#relations' do
    it { should belong_to(:raffle) }
    it { should have_many(:tickets).dependent(:destroy) }
  end

  describe '#enums' do
    it { should define_enum_for(:status).with_values([:pending, :verified]) }
    it { should define_enum_for(:type_of_payment).with_values([:bcp, :bbva, :yape]) }
  end

end
