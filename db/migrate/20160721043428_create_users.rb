class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name, limit: 100
      t.string :email, limit: 80
      t.string :address
      t.string :password, limit: 30
      t.integer :cc_number
      t.string :photo_url

      t.timestamps
    end
  end
end
