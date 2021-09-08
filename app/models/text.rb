class Text < ApplicationRecord
  belongs_to :artist
  belongs_to :user
  has_many :user_text

end
