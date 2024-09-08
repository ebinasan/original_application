class StampImage < ApplicationRecord
  belongs_to :user
  belongs_to :road_station
  
  has_one_attached :image

  validates :image, presence: true
end
