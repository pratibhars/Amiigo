class AddRolesToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :admin_role, :boolean, default: false 
    add_column :users, :seller_role, :boolean, default: false
    add_column :users, :customer_role, :boolean, default: true 
  end
end
