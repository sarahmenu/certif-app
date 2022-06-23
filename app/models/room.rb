class Room < ApplicationRecord
  belongs_to :hotel
  has_one_attached :photo
  has_many :bookings, dependent: :destroy

  validates :price_per_day, numericality: { greater_than: 0 }
  validates :price_per_day, presence: true

  validates :capacity, presence: true
  validates :capacity, numericality: { greater_than: 0, only_integer: true }

end
