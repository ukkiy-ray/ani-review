class LikesController < ApplicationController
  before_action :set_post
  before_action :authenticate_user!
  attr_accessor :user_id, :post_id

  def create
    if user_signed_in?
      @like = Like.new(user_id: current_user.id, post_id: @post.id)
      @like.save
      redirect_to post_path(@post.id)
    end
  end

  def destroy
    if user_signed_in?
      @like = Like.find_by(user_id: current_user.id, post_id: @post.id)
      @like.destroy
      redirect_to post_path(@post.id)
    end
  end

  private
  def set_post
    @post = Post.find(params[:post_id])
  end
end
