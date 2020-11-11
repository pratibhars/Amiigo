class AddGameSeriesToAmiibo < ActiveRecord::Migration[6.0]
  def change
    add_column :amiibos, :amibo_game_series, :string
  end
end
