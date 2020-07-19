class AddBuyerRefToTicket < ActiveRecord::Migration[6.0]
  def change
    add_reference :tickets, :buyer, null: false, foreign_key: true
  end
end
