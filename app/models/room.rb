class Room < ApplicationRecord
  belongs_to :user
  has_many :reservations
  has_many_attached :photos
  validates :description, presence: true
  validates :name, presence: true
  validates :price, presence: true
end
