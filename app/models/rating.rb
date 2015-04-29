class Rating < ActiveRecord::Base
<<<<<<< HEAD
<<<<<<< HEAD
=======
	belongs_to :user
	belongs_to :game
	
	validates :rating, presence: true
>>>>>>> model_validations
=======
	belongs_to :user
	belongs_to :game

	validates :user_id, presence: true
	validates :game_id, presence: true 	
	validates :value, presence: true
	validates_uniqueness_of :user_id, :scope => :game_id, :message=>"You can't rate a game more than once", on: 'create'
>>>>>>> 446b24f8c9eea472e93e198e5175553229221e8f
end
