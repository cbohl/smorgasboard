class Comment < ActiveRecord::Base
	belongs_to :user
	belongs_to :game

	validates :body, presence: true
	validates :user_id, presence: true
	validates :game_id, presence: true
end
