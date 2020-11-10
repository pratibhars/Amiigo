class CreateAmiibos < ActiveRecord::Migration[6.0]
  def change
    create_table :amiibos do |t|

      t.timestamps
    end
  end
end
