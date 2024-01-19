class CreateReviews < ActiveRecord::Migration[7.1]
  def change
    create_table :reviews do |t|
      t.string :title
      t.string :body
      t.integer :rating, null: false
      t.integer :customer_id, null: false
      t.integer :book_id, null: false
      t.timestamps
    end

    add_foreign_key :reviews, :customers, column: :customer_id
    add_foreign_key :reviews, :books, column: :book_id
  end
end
