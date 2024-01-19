class CreateBooks < ActiveRecord::Migration[7.1]
  def change
    create_table :books do |t|
      t.string :title, null: false
      t.integer :year_published, null: false
      t.string :isbn, null: false
      t.decimal :price, null: false
      t.boolean :out_of_print, null: false
      t.integer :views, null: false
      t.timestamps
    end
  end
end
