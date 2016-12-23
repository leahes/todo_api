class List < ApplicationRecord
  belongs_to :user
  has_many :items

  validates :user_id, presence: true
  validates :title, presence: true
  validates :permissions, presence: true
  
end
