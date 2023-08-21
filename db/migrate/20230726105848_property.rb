class Property < ActiveRecord::Migration[7.0]
  def change
    add_column :properties, :status_type, :integer, default: 0
  end
end
