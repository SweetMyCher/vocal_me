class User < ApplicationRecord
  # Include default users modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :artist
  has_many :genre
  has_many :test
  has_many :user_text

  def is_admin?
    self.admin
  end
end
