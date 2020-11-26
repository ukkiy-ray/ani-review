class UsersController < ApplicationController
  before_action :set_user, except: [:time_line]
  before_action :authenticate_user!, only: [:likes, :following, :followers, :time_line]

  def show
    @notifications = current_user.passive_notifications
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

  def time_line
    @users = current_user.following.all
    @posts = []
    @users.each do |user|
      posts = Post.where(user_id: user.id).order(created_at: :desc)
      @posts.concat(posts)
    end
    @posts = @posts.sort_by{|post| post.created_at}.reverse
  end

  private
  def set_user
    @user = User.find(params[:id])
  end
end
