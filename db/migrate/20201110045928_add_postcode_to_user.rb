class AddPostcodeToUser < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :postcode, :integer
  end
end
