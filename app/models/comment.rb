class Comment < ActiveRecord::Base
<<<<<<< HEAD
<<<<<<< HEAD
=======
=======
>>>>>>> 446b24f8c9eea472e93e198e5175553229221e8f
	belongs_to :user
	belongs_to :game

	validates :body, presence: true
<<<<<<< HEAD
>>>>>>> model_validations
=======
	validates :user_id, presence: true
	validates :game_id, presence: true
	
>>>>>>> 446b24f8c9eea472e93e198e5175553229221e8f
end
