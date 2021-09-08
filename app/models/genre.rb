class Genre < ApplicationRecord
  belongs_to :user
  has_many :artist
end
