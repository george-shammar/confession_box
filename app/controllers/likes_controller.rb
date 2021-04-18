class LikesController < ApplicationController
    def create
      @like = current_user.likes.new(post_id: params[:post_id])
  
      if @like.save
        redirect_to posts_path, notice: 'You liked a confession.'
      else
        redirect_to posts_path, alert: 'You cannot like this confession.'
      end
    end
  
    def destroy
      like = Like.find_by(id: params[:id], user: current_user, post_id: params[:post_id])
      if like
        like.destroy
        redirect_to posts_path, notice: 'You disliked a confession.'
      else
        redirect_to posts_path, alert: 'You cannot dislike a confession you did not like before.'
      end
    end
  
    private
  
    def like_params
      params.require(:like).permit(:opinion_id, :user_id)
    end
  end
  