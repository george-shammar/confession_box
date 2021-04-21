class Post < ApplicationRecord
    belongs_to :user, class_name: 'User', foreign_key: 'user_id'


    has_many :comments, dependent: :destroy
    has_many :likes, dependent: :destroy
end


def like_count(post)
    @like = Like.where(post_id: post.id)
    @like.count
end


def comment_count(post)
    @comment = Comment.where(post_id: post.id)
    @comment.count
end