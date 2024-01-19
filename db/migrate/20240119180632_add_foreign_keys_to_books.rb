class AddForeignKeysToBooks < ActiveRecord::Migration[7.1]
  def change
    add_column :books, :supplier_id, :integer, null: false
    add_foreign_key :books, :suppliers
    add_column :books, :author_id, :integer, null: false
    add_foreign_key :books, :authors
  end
end
