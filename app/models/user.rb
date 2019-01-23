class User < ApplicationRecord
  has_many :likes
  has_many :memes

  def total_points
    self.likes.count
  end
end
