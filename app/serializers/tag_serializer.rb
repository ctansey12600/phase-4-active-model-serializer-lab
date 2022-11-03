class TagSerializer < ActiveModel::Serializer
  attributes :name

  has_many :posts
end

# The name of the tag
# A list of the posts the tag is associated with
