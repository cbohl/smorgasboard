class User < ActiveRecord::Base
	has_many :user_games, class_name: "UserGame", foreign_key: :user_id
  has_many :owned_games, through: :user_games, source: :game
  has_many :ratings
  has_many :rated_games, through: :ratings, source: :game
	has_many :comments
  has_many :commented_games, through: :comments, source: :game

	validates :email, presence: true
	validates :username, presence: true
	validates :password, presence: true
	validates :name, presence: true 

	has_secure_password
end
