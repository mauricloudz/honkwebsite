class CreateCustomers < ActiveRecord::Migration[5.2]
  def change
    create_table :customers do |t|
      t.string :name
      t.string :address
      t.string :phone
      t.string :email
      t.boolean :wholesale, default: false

      t.timestamps
    end
  end
end
