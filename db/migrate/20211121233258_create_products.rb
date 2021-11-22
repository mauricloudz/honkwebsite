class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|
      t.string :name, null: false
      t.text :description
      t.integer :normal_price, null: false
      t.integer :wholesale_price, null: false

      t.timestamps
    end
  end
end
