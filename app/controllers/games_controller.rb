class GamesController < ApplicationController

  def index
    # @games Game.all.select{|game| game unless game.average_rating.nan?}
    @top_ten_games = Game.all.select{|game| game unless game.average_rating.nan?}.sort_by(&:average_rating).reverse[0..9]
    @games = Game.order("name").page(params[:page])
  end

  def show
    @user = current_user
    @game = Game.find_by(id: params[:id])
    @tags = @game.tags
    @comments = @game.comments.sort_by(&:created_at).reverse
    @comment = Comment.new

    if @user.owned_games.include?(@game)
      @owned_game = UserGame.find_by(user: current_user, game: @game)
    else
      @owned_game = UserGame.new
    end
  end
end
