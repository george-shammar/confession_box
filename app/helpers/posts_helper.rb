module PostsHelper
    def like_or_dislike_btn(post)
      if user_signed_in?
        like = Like.find_by(post: post, user: current_user)
        if like
          link_to('Likes!',post_like_path(id: like.id, post_id: post.id),
                  method: :delete)
        else
          link_to('Likes!', post_likes_path(post_id: post.id), method: :post)
        end
      else
        link_to 'Likes', new_user_session_path
      end
    end
end
