class AddTypeToAmiibo < ActiveRecord::Migration[6.0]
  def change
    add_column :amiibos, :amibo_type, :string
  end
end
