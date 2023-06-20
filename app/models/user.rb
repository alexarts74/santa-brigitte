class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :rooms, dependent: :delete_all
  has_many :reservations, dependent: :delete_all

  validates :email, presence: true
  validates :encrypted_password, presence: true
  validates :firstname, presence: true
  validates :lastname, presence: true
end
