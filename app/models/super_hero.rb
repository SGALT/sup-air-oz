class SuperHero < ApplicationRecord
  belongs_to :user
  has_many :bookings
  has_many :super_hero_powers

  validates :name, presence: true
  validates :address, presence: true
  validates :price, presence: true, numericality: { only_integer: true }
end