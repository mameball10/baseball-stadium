class Team < ApplicationRecord
  has_many :users
  has_many :posts
  has_many :players
end
