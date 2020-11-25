class UsersController < ApplicationController
  before_action :set_user
  before_action :authenticate_user!, only: [:likes, :following, :followers]

  def show
    @post_all = @user.posts.order(created_at: :desc)
    @posts = @post_all.page(params[:page]).per(7)
  end

  def likes
    @post_all = Like.where(user_id: @user.id).order(created_at: :desc)
    @likes = @post_all.page(params[:page]).per(7)
  end

  def following
    @user  = User.find(params[:id])
    @users = @user.following.order(created_at: :desc).page(params[:page]).per(10)
  end

  def followers
      @user  = User.find(params[:id])
      @users = @user.followers.order(created_at: :desc).page(params[:page]).per(10)
  end

  private
  def set_user
    @user = User.find(params[:id])
  end
end
