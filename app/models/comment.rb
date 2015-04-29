class Comment < ActiveRecord::Base
<<<<<<< HEAD
=======
	belongs_to :user
	belongs_to :game

	validates :body, presence: true
>>>>>>> model_validations
end
