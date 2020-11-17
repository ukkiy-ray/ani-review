class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @posts = @user.posts.order(created_at: :desc)
  end

  def likes
    @user = User.find(params[:id])
    @likes = Like.where(user_id: @user.id).order(created_at: :desc)
  end
end
