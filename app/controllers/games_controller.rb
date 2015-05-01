class GamesController < ApplicationController

  def index

    # @games Game.all.select{|game| game unless game.average_rating.nan?}
    @games = Game.all.select{|game| game unless game.average_rating.nan?}.sort_by(&:average_rating).reverse[0..9]

    @prefixes = ('A'..'Z').to_a
    if params[:letter]
      @games = Game.where("games.name LIKE :letter", { letter: params[:letter]}).page(params[:page]).per(5)
    end
    # if request.xhr?
    #   render '_alphabetized_games', layout: false
    # end
  end

  # def alphabetized_games
  #   @prefixes = ('A'..'Z').to_a
  #   @games = Game.where("games.name LIKE :letter", { letter: params[:letter]}).page(params[:page]).per(5)
  # end

  def show
    @user = current_user
    @game = Game.find_by(id: params[:id])
    @tags = @game.tags
    @comments = @game.comments.sort_by(&:created_at).reverse
    @comment = Comment.new
    @rating = Rating.find_by(user: @user, game: @game) || Rating.new

    if @user.owned_games.include?(@game)
      @owned_game = UserGame.find_by(user: current_user, game: @game)
    else
      @owned_game = UserGame.new
    end
  end



end
