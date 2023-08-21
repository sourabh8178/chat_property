class User < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :role, :string, default: "customer" 
    add_column :users, :is_active, :boolean, default: true
  end
end
