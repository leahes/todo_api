class ItemSerializer < ActiveModel::Serializer
  attributes :id, :description, :done 
end
