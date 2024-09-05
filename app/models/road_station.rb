class RoadStation < ApplicationRecord
  validates :name, presence: true
  validates :location, length: { maximum: 255 }, allow_blank: true
  validates :phone_number, length: { maximum: 15 }, allow_blank: true
  validates :business_hours, length: { maximum: 255 }, allow_blank: true
  validates :facility_amenities, length: { maximum: 500 }, allow_blank: true

  belongs_to :user
end