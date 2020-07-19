class AddedQuantityToBuyer < ActiveRecord::Migration[6.0]
  def change
    add_column :buyers, :quantity, :integer, default: 1
  end
end
