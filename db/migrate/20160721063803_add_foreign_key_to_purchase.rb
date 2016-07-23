class AddForeignKeyToPurchase < ActiveRecord::Migration
  def change
    add_foreign_key :purchases, :products
    add_foreign_key :purchases, :users
  end
end
