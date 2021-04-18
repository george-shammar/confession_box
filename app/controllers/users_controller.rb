class UsersController < ApplicationController
    def index
      @users = User.all
    end
  
    def show
      @user = User.find(params[:id])
      @posts = @user.posts.ordered_by_most_recent
    end
  end