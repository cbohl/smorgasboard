class Game < ActiveRecord::Base
	has_many :ratings
	has_many :comments
	has_many :users_games

	has_many :raters, through: :ratings, source: :user
	has_many :commenters, through: :comments, source: :user
	has_many :players, through: :users_games, source: :user

	validates :name, presence: true


	def average_rating
		self.ratings/self.ratings.count 
	end
end
