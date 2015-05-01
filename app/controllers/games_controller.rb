class GamesController < ApplicationController

  def index
    @games = Game.order("name").page(params[:page])
  end

  def show
    @game = Game.find_by(id: params[:id])
    @tags = @game.tags
    @comments = @game.comments
    @comment = Comment.new
  end

end
