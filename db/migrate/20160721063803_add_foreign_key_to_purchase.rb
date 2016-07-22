class AddForeignKeyToPurchases < ActiveRecord::Migration
  def change
    add_foreign_key :purchase, :products
    add_foreign_key :purchase, :users
  end
end
