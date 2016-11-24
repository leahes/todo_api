class Item < ApplicationRecord
  belongs_to :list, required: true
  delegate :user, to: :list
end
