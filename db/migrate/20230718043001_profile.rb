class Profile < ActiveRecord::Migration[7.0]
  def change
    add_column :profiles, :is_complete, :boolean, default: false
  end
end
