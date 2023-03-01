class Admin < ApplicationRecord
  validates :name, :email, :role, presence: true
  validates :phone_number, presence: true ,numericality: { less_than_or_equal_to: 10,  only_integer: true }
  validates :email, uniqueness: true
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  enum role: [:admin,:super_user]
  
  after_initialize :set_default_role,:if => :new_record?
  def set_default_role
    self.role ||=:admin
  end  
end
