class AddPriceToAmiibo < ActiveRecord::Migration[6.0]
  def change
    add_column :amiibos, :amibo_price, :float
  end
end
