class RemoveColumnsFromUsers < ActiveRecord::Migration[6.0]
  def change
    remove_column :users, :uid, :string
    remove_column :users, :provider, :string
    remove_column :users, :access_code, :string
    remove_column :users, :publishable_key, :string
  end
end
