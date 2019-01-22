class User < ApplicationRecord
  has_many :likes
  has_many :memes, through: :likes
end
