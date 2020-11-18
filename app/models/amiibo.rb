class Amiibo < ApplicationRecord
    belongs_to :user
    validates :amibo_name, :amibo_price, :description, presence: true
    validates :amibo_price, numericality: {greater_than_or_equal_to: 0}
    attribute :amibo_price, default: 0.5

    has_one_attached :image, dependent: :purge
    has_rich_text :description

    self.per_page = 2
end
