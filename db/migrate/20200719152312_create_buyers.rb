class CreateBuyers < ActiveRecord::Migration[6.0]
  def change
    create_table :buyers do |t|
      t.string :name
      t.string :phone_number
      t.integer :status
      t.decimal :total
      t.string :code
      t.integer :type_of_payment
      t.datetime :date_of_payment
      t.datetime :date_of_verified
      t.string :voucher
      t.string :code_operation
      t.references :raffle, null: false, foreign_key: true

      t.timestamps
    end
  end
end
