class UsersController < ApplicationController
  before_action :set_user
  before_action :authenticate_user!, only: [:likes]

  def show
    @post_all = @user.posts.all
    @posts = @user.posts.order(created_at: :desc).page(params[:page]).per(7)
  end

  def likes
    @post_all = Like.where(user_id: @user.id).all
    @likes = Like.where(user_id: @user.id).order(created_at: :desc).page(params[:page]).per(7)
  end

  private
  def set_user
    @user = User.find(params[:id])
  end
end
