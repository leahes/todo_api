class List < ApplicationRecord
  belongs_to :user, required: true
  has_many :items
end
