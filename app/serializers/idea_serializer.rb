class IdeaSerializer < ActiveModel::Serializer
  attributes :id, :body, :category_id
end
