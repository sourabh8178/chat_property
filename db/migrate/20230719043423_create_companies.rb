class CreateCompanies < ActiveRecord::Migration[7.0]
  def change
    create_table :companies do |t|
      t.string :title
      t.text :description
      t.datetime :start_date
      t.boolean :is_active, default: true

      t.timestamps
    end
  end
end
