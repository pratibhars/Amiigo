class AddUsertoAmiibos < ActiveRecord::Migration[6.0]
  def change
    add_reference :amiibos, :user, foreign_key: true
  end
end
