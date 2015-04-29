class Comment < ActiveRecord::Base
	belongs_to :user
	belongs_to :game

	validates :body, presence: true
end
