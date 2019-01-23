class User < ApplicationRecord
  has_many :likes
  has_many :memes

  def total_applauds
    self.likes.count
  end
end
