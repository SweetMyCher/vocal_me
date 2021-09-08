class UserText < ApplicationRecord
  validates :name, :custom_text, presence: true

  belongs_to :user
  belongs_to :text
end
