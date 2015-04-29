class Tag < ActiveRecord::Base
<<<<<<< HEAD
<<<<<<< HEAD
=======
=======
>>>>>>> 446b24f8c9eea472e93e198e5175553229221e8f
	has_many :taggings
	has_many :tagged_games, through: :taggings, source: :games

	validates :name, presence: true
<<<<<<< HEAD
>>>>>>> model_validations
=======

>>>>>>> 446b24f8c9eea472e93e198e5175553229221e8f
end
