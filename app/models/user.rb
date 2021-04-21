class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  validates :username, presence: true, length: { maximum: 20 }
  validates :password, presence: true, length: { minimum: 6 }

  has_many :posts, class_name: 'Post', foreign_key: 'user_id', dependent: :destroy

  has_many :likes, dependent: :destroy
  has_many :comments, dependent: :destroy
end
