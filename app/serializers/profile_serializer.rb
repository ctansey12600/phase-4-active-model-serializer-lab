class ProfileSerializer < ActiveModel::Serializer
  attributes :username, :email, :bio, :avatar_url
end

# The author's profile, including only the username, email, bio and avatar_url
