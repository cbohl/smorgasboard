class User < ActiveRecord::Base
<<<<<<< HEAD
<<<<<<< HEAD
=======
=======

>>>>>>> 446b24f8c9eea472e93e198e5175553229221e8f
	has_many :ratings
	has_many :comments
	has_many :users_games
	has_many :rated_games, through: :ratings, source: :game
	has_many :commented_on_games, through: :comments, source: :game
	has_many :games, through: :users_games

	validates :email, presence: true
	validates :username, presence: true

	has_secure_password
<<<<<<< HEAD
>>>>>>> model_validations
=======

>>>>>>> 446b24f8c9eea472e93e198e5175553229221e8f
end
