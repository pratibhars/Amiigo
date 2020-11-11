class AddSeriesToAmiibo < ActiveRecord::Migration[6.0]
  def change
    add_column :amiibos, :amibo_series, :string
  end
end
