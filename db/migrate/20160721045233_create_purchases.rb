class CreatePurchases < ActiveRecord::Migration
  def change
    create_table :purchases do |t|
      t.references :product_id
      t.references :user_id
      t.boolean :status

      t.timestamps
    end
  end
end
