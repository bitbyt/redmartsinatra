class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :name, limit: 100
      t.string :description
      t.references :brand
      t.references :category
      t.float :price
    end
  end
end
