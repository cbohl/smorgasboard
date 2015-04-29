class User < ActiveRecord::Base
	has_many :ratings
	has_many :comments
	has_many :users_games
	has_many :rated_games, through: :ratings, source: :game
	has_many :commented_on_games, through: :comments, source: :game
	has_many :games, through: :users_games

	validates :email, presence: true
	validates :username, presence: true

	has_secure_password
end
