class Room < ApplicationRecord
  belongs_to :hotel
  has_one_attached :photo
end
