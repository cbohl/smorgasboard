class GamesController < ApplicationController
  def index
    @games = Game.all
  end

  def show
    @game = Game.find_by(id: params[:id])
    @tags = @game.tags
    @comments = @game.comments
  end
end
