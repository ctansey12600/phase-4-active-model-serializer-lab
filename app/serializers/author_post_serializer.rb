class AuthorPostSerializer < ActiveModel::Serializer
  attributes :title, :short_content

  def short_content
    "#{self.object.content[0..39]}..."
  end

  has_many :tags
end

# A list of the author's posts, including:
# the title
# the first 40 characters of the post's content as short_content, with a trailing ellipsis (...) at the end
# a list of the associated tags
