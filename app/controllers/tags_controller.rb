class TagsController < ApplicationController
	def index
    @mechanics = Tag.where(category: "mechanic")
    @genres = Tag.where(category: "genre")
	end

	def show
    puts params
    @tag = Tag.find_by(id: params[:id])
    @games = @tag.tagged_games
	end
end
