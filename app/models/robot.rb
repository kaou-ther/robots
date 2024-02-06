class Robot < ApplicationRecord
  validates :name, presence: true
  validates :description, presence: true
  validates :category, presence: true
  validates :price, presence: true
  belongs_to :user
  has_many :orders
  has_one_attached :photo
  include PgSearch::Model
  pg_search_scope :global_search,

    against: [ :name, :category ],
    associated_against:{
      user: [ :first_name, :last_name ]
    },
    using: {
      tsearch: { prefix: true }
    }
end
