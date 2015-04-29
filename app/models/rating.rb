class Rating < ActiveRecord::Base
<<<<<<< HEAD
=======
	belongs_to :user
	belongs_to :game
	
	validates :rating, presence: true
>>>>>>> model_validations
end
