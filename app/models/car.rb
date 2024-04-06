class Car < ApplicationRecord
  belongs_to :user
  has_many :bookings, dependent: :destroy
  validates :model, :brand, :year, :km, :description, :price_per_day, :color, :photo, presence: true
  validates :price_per_day, numericality: { greater_than: 0 }
end
