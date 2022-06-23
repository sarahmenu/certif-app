class Room < ApplicationRecord
  belongs_to :hotel
  has_one_attached :photo
  validates :price_per_day, numericality: { greater_than: 0 }
end
