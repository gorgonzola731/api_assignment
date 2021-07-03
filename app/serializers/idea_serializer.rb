class IdeaSerializer < ActiveModel::Serializer
  attributes :id, :body, :category_id, :created_at
  belongs_to :category
end
