class Item < ApplicationRecord
  belongs_to :list
  delegate :user, to: :list 
end
