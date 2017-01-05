class User < ApplicationRecord
  has_many :lists
  has_many :items, through: :lists

  validates :username, presence: true
  validates :password, presence: true
end
