class User < ApplicationRecord
  validates :first_name, :last_name, :address, :email, :phone_number, :password, presence: true
  has_many :robots, :orders, dependent: :destroy
end
