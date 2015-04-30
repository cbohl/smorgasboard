class CommentsController < ApplicationController
  def create
    @comment = Comment.new(comment_params)
    @comment.update(user: current_user, game_id: game_params[:game_id])

    if @comment.save
      redirect_to @comment.game
    else
      @game = Game.find_by(id: params[:game_id])
      @tags = @game.tags
      @comments = @game.comments
      render "games/show"
    end
  end

  private

  def comment_params
    params.require(:comment).permit(:body)
  end

  def game_params
    params.permit(:game_id)
  end
end
