class Item < ApplicationRecord
  belongs_to :list

  validates :list_id, presence: true
  validates :username, presence: true
end
