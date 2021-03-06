class User < ApplicationRecord
  before_save { self.email.downcase! }
  validates :name, presence: true, length: { maximum: 50 }
  validates :email, presence: true, length: { maximum: 255 },
                    format: { with: /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i },
                    uniqueness: { case_sensitive: false }
  
  has_secure_password
  
  belongs_to :team, optional: true
  
  has_many :messages
  has_many :favorites
  has_many :likes, through: :favorites, source: :message
  has_many :myplayers
  has_many :featured, through: :myplayers, source: :player
  
  def favorite(message)
    self.favorites.find_or_create_by(message_id: message.id)
  end
  
  def unfavorite(message)
    favorite = self.favorites.find_by(message_id: message.id)
    favorite.destroy if favorite
  end
  
  def favorite?(message)
    self.likes.include?(message)
  end
  
  def select_myplayer(player)
    self.myplayers.find_or_create_by(player_id: player.id)
  end
  
  def release_myplayer(player)
    myplayer = self.myplayers.find_by(player_id: player.id)
    myplayer.destroy if myplayer
  end
  
  def select_myplayer?(player)
    self.featured.include?(player)
  end

end
