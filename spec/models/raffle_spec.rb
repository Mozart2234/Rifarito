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
require 'rails_helper'

RSpec.describe Raffle, type: :model do
  describe '#Validations' do
    it { should validate_presence_of(:name) }
    it { should validate_presence_of(:amount) }
    it { should validate_presence_of(:quantity) }
    # it { should validate_length_of(:quantity).is_at_least(1).is_at_most(2000) }
    it { should validate_numericality_of(:quantity) }
  end
end
