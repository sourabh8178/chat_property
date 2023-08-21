class AddColumnCompanyIdToUsers < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :company_id, :integer
    add_column :properties, :user_id, :integer
  end
end
