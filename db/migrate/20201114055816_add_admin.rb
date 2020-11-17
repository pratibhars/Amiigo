class AddAdmin < ActiveRecord::Migration[6.0]
  def change
    User.create! do |u|
      u.email = "#{rand(36**15).to_s(36)}@test.com"
      u.password = 'password1'
      u.admin_role = true
    end 
  end
end
