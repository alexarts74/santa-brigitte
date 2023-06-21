class Room < ApplicationRecord
  belongs_to :user
  has_one_attached :image
  has_many :reservations

  validates :description, presence: true
  validates :name, presence: true
  validates :price, presence: true
end
