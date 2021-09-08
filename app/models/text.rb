class Text < ApplicationRecord
  validates :name, :text, presence: true

  belongs_to :artist
  belongs_to :user
  has_many :user_text

end
