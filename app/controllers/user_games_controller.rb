  class UserGamesController < ApplicationController
    def create
      @game = Game.find_by(id: params[:game_id])
      current_user.owned_games << @game
      redirect_to :back
    end

    def destroy
      @game = Game.find_by(id: params[:game_id])
      current_user.owned_games.destroy(@game)
      redirect_to :back
    end
end
