class RemoveSeriesFromAmiibo < ActiveRecord::Migration[6.0]
  def change
    remove_column :amiibos, :amibo_series, :string
  end
end
