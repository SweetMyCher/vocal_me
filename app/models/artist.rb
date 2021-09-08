class Artist < ApplicationRecord
  validates :name, presence: true

  belongs_to :user
  belongs_to :genre
  has_many :text
end
