class User < ApplicationRecord
  validates :name, :email, :phone_number, presence: true
  validates :phone_number, presence: true ,numericality: { less_than_or_equal_to: 10,  only_integer: true }
  validates :email, uniqueness: true
  # has_many :movie_tickets
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable  

  has_many :movie_tickets
  has_many :booked_tickets
end
