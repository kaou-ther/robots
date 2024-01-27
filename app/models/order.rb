class Order < ApplicationRecord
  belongs_to :robot
  belongs_to :user
  validates :start_date, :end_date, :status, presence: true
end
