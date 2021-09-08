class Genre < ApplicationRecord
  validates :name, presence: true

  belongs_to :user
  has_many :artist
end
