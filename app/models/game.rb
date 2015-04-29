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

	def duration_of_game
		Range.new(self.min_duration_of_game, self.max_duration_of_game)
	end

	def number_of_players
		Range.new(self.min_number_of_players, self.max_number_of_players)
	end
end
