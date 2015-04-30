class Comment < ActiveRecord::Base
  validates :body, length: { minimum: 4 }
	belongs_to :user
	belongs_to :game
end
