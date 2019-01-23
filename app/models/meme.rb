class Meme < ApplicationRecord
  belongs_to :user
  has_many :likes
	has_one_attached :cover_photo
end
