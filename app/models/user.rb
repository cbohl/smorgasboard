class User < ActiveRecord::Base
	has_many :ratings
	has_many :comments
	has_many :user_games, class_name: "UserGame", foreign_key: :user_id
  has_many :owned_games, through: :user_games, source: :game
	has_many :rated_games, through: :ratings, source: :game
	has_many :commented_on_games, through: :comments, source: :game
	has_many :games, through: :users_games

	validates :email, presence: true
	validates :username, presence: true

	has_secure_password
end
