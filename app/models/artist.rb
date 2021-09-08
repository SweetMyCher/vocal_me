class Artist < ApplicationRecord
  belongs_to :user
  belongs_to :genre
  has_many :text
end
