class CreateProperties < ActiveRecord::Migration[7.0]
  def change
    create_table :properties do |t|
      t.string :name
      t.text :description
      t.float :price
      t.float :size
      t.text :amenities
      t.string :location

      t.timestamps
    end
  end
end
