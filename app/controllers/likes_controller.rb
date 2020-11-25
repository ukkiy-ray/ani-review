class LikesController < ApplicationController
  before_action :set_post
  before_action :authenticate_user!
  attr_accessor :user_id, :post_id

  def create
    if user_signed_in?
      @like = current_user.likes.build(post_id: params[:post_id])
      @like.save
      
      @post.create_notification_like!(current_user)
    end
  end

  def destroy
    if user_signed_in?
      @like = Like.find_by(post_id: params[:post_id], user_id: current_user.id)
      @like.destroy
      
    end
  end

  private
  def set_post
    @post = Post.find(params[:post_id])
  end
end
