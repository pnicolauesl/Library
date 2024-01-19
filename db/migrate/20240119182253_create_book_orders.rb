class CreateBookOrders < ActiveRecord::Migration[7.1]
  def change
    create_table :book_orders do |t|
      t.integer :order_id, null: false
      t.integer :book_id, null: false
      t.timestamps
    end
    add_foreign_key :book_orders, :orders, column: :order_id
    add_foreign_key :book_orders, :books, column: :book_id
  end
end
