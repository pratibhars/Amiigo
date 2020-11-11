class AddConditionToAmiibo < ActiveRecord::Migration[6.0]
  def change
    add_column :amiibos, :amibo_condition, :string
  end
end
