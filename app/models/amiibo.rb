class Amiibo < ApplicationRecord
    belongs_to :user
    # belongs_to: order 
    validates :amibo_name, :amibo_price, :description, presence: true
    validates :amibo_price, numericality: {only_integer: true, greater_than_or_equal_to: 0}
    attribute :amibo_price, default: 0.5

    has_one_attached :image
    has_rich_text :description 
end
