class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  validates :first_name, :last_name, :address, :email, :phone_number, :password, presence: true
  has_many :robots, dependent: :destroy
  has_many :orders, dependent: :destroy
end
