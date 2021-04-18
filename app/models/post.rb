class Post < ApplicationRecord
    belongs_to :user, class_name: 'User', foreign_key: 'user_id'

    has_many :likes, dependent: :destroy
end


def like_count(post)
    @like = Like.where(post_id: post.id)
    @like.count
end