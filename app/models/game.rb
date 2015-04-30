class Game < ActiveRecord::Base
	has_many :user_games, class_name: "UserGame", foreign_key: :game_id
	has_many :owners, through: :user_games, source: :user
	has_many :ratings
	has_many :raters, through: :ratings, source: :user
	has_many :comments
	has_many :commenters, through: :comments, source: :user
	has_many :taggings
	has_many :tags, through: :taggings

	validates :name, presence: true


	def average_rating
		(self.ratings.map{ |rating| rating.value }.reduce(:+).to_f)/self.ratings.count 
	end

	def duration_of_game
		Range.new(self.min_duration_of_game, self.max_duration_of_game)
	end

	def number_of_players
		Range.new(self.min_number_of_players, self.max_number_of_players)
	end
end
