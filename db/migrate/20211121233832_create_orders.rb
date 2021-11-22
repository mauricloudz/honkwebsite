class CreateOrders < ActiveRecord::Migration[5.2]
  def change
    create_table :orders do |t|
      t.string :name, null: false
      t.string :shipping_address
      t.integer :order_total, null: false
      t.integer :order_status, null: false

      t.timestamps
    end
  end
end
