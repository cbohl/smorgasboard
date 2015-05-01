class RatingsController < ApplicationController
  def create
    rating = Rating.new(user: current_user, game_id: game_params)
    rating.update(rating_params)
    redirect_to rating.game
  end

  def update
    rating = Rating.find_by(user: current_user, game_id: game_params)
    rating.update(rating_params)
    redirect_to rating.game
  end

  private

  def rating_params
    params.require(:rating).permit(:score)
  end

  def game_params
    params.require(:game_id)
  end
end
