class User < ApplicationRecord
  has_many :likes
  has_many :memes
	has_one_attached :profile_pic

  def total_applauds
    self.likes.count
  end
end
