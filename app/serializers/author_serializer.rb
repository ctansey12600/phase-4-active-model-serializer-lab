class AuthorSerializer < ActiveModel::Serializer
  attributes :name

  has_many :posts, serializer: AuthorPostSerializer
  has_one :profile
end

# The author's name
# The author's profile, including only the username, email, bio and avatar_url
# A list of the author's posts, including:
# the title
# the first 40 characters of the post's content as short_content, with a trailing ellipsis (...) at the end
# a list of the associated tags
