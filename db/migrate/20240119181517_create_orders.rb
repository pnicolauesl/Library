class CreateOrders < ActiveRecord::Migration[7.1]
  def change
    create_table :orders do |t|
      t.time :date_submitted, null: false
      t.integer :status, null: false
      t.decimal :subtotal, null: false
      t.decimal :shipping, null: false
      t.decimal :tax, null: false
      t.decimal :total, null: false
      t.integer :customer_id, null: false
      t.timestamps
    end

    add_foreign_key :orders, :customers, column: :customer_id
  end
end
