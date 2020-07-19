class CreateRaffles < ActiveRecord::Migration[6.0]
  def change
    create_table :raffles do |t|
      t.string :name
      t.integer :quantity
      t.datetime :date_finish
      t.decimal :amount

      t.timestamps
    end
  end
end
