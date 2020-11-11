class AddNameToAmiibo < ActiveRecord::Migration[6.0]
  def change
    add_column :amiibos, :amibo_name, :string
  end
end
