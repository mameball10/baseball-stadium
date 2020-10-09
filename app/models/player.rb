class Player < ApplicationRecord
  belongs_to :team
  
  has_many :myplayers, dependent: :destroy
end
