class AddColumnToProfilesMobileNumber < ActiveRecord::Migration[7.0]
  def change
    add_column :profiles, :mobile_number, :string
    add_column :profiles, :address, :string
  end
end
