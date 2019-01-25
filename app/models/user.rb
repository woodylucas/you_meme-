class User < ApplicationRecord
  has_many :likes
  has_many :memes
	has_one_attached :profile_pic
  has_secure_password

end
