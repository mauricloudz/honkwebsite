class CreateVariants < ActiveRecord::Migration[5.2]
  def change
    create_table :variants do |t|
      t.string :name
      t.string :sku, null: false
      t.integer :normal_price, null: false
      t.integer :wholesale_price, null: false

      t.timestamps
    end
  end
end
