class CreatePosts < ActiveRecord::Migration[7.0]
  def change
    create_table :posts do |t|
      t.string :property_type
      t.string :transaction_type
      t.string :city
      t.float :price
      t.text :details
      t.string :name
      t.string :email
      t.string :phone_number
      t.integer :user_id

      t.timestamps
    end
  end
end
