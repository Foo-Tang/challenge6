class Customer < ApplicationRecord
has_one_attached :image
validates :name, :phone, presence:true
end
