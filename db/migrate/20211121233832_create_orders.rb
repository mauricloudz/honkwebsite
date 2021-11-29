class CreateOrders < ActiveRecord::Migration[5.2]
  def change
    create_table :orders do |t|
      t.string :name
      t.string :shipping_address
      t.integer :order_total, null: false
      t.string :order_status, default: 'new', null: false

      t.timestamps
    end
  end
end
