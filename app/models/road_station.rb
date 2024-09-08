class RoadStation < ApplicationRecord
  validates :name, presence: { message: "を入力してください" }
  validates :location, length: { maximum: 255 }, allow_blank: true
  validates :phone_number, length: { maximum: 15 }, allow_blank: true
  validates :business_hours, length: { maximum: 255 }, allow_blank: true
  validates :facility_amenities, length: { maximum: 500 }, allow_blank: true

  belongs_to :user
  has_many :stamp_images, dependent: :destroy
end