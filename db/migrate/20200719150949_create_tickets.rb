class CreateTickets < ActiveRecord::Migration[6.0]
  def change
    create_table :tickets do |t|
      t.integer :num
      t.boolean :sold, default: false

      t.references :raffle, null: false, foreign_key: true
      t.timestamps
    end
  end
end
