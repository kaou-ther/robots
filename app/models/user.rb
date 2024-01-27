class User < ApplicationRecord
  validates :first_name, :last_name, :address, :email, :phone_number, :password, presence: true
end
