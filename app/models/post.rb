class Post < ApplicationRecord
  belongs_to :team
  
  validates :name, presence: true, length: { maximum: 10 }
  validates :comment, presence: true, length: { maximum: 100 }
end
