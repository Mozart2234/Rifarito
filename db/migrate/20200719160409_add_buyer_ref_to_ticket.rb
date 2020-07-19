class AddBuyerRefToTicket < ActiveRecord::Migration[6.0]
  def change
    add_reference :tickets, :buyer, foreign_key: true
  end
end
