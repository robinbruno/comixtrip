class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :bookmarks
  has_many :comic_trips
  has_many :albums

  def avatar_url
    avatar.presence || '/assets/images/default_avatar.png'
  end
end
