class CreateCustomers < ActiveRecord::Migration[7.1]
  def change
    create_table :customers do |t|
      t.string :first_name, null: false
      t.string :last_name, null: false
      t.string :email, null: false
      t.integer :visits, null: false, default: 0
      t.integer :orders_count, null: false, default: 0
      t.timestamps
    end
  end
end
