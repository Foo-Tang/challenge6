class Customer < ApplicationRecord
has_one_attached :image
validates :name, :phone, presences:true
end
