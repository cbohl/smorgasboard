class Tag < ActiveRecord::Base
<<<<<<< HEAD
=======
	has_many :taggings
	has_many :tagged_games, through: :taggings, source: :games

	validates :name, presence: true
>>>>>>> model_validations
end
