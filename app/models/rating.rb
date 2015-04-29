class Rating < ActiveRecord::Base
	belongs_to :user
	belongs_to :game

	validates :user_id, presence: true
	validates :game_id, presence: true 	
	validates :value, presence: true
	validates_uniqueness_of :user_id, :scope => :game_id, :message=>"You can't rate a game more than once", on: 'create'
end
