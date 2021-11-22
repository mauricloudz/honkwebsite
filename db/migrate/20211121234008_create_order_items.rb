class CreateOrderItems < ActiveRecord::Migration[5.2]
  def change
    create_table :order_items do |t|
      t.integer :quantity, null: false
      t.integer :normal_price, null: false
      t.integer :wholesale_price, null: false

      t.timestamps
    end
  end
end
