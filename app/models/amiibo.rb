class Amiibo < ApplicationRecord
    belongs_to :user
    # belongs_to: order 
    has_one_attached :picture 
end
