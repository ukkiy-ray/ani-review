class PostsController < ApplicationController
  before_action :set_post, only: [:show, :destroy]
  before_action :authenticate_user!, only: [:new, :create, :destroy]

  def index
    @posts = Post.all.order(created_at: :desc)
  end

  def new
    @post = PostsTag.new
  end

  def create
    @post = PostsTag.new(post_params)
    if @post.valid?
      @post.save
      return redirect_to root_path
    else
      render "new"
    end
  end

  def show
    @tags = @post.tags
    @likes = Like.where(post_id: @post.id)
    if user_signed_in?
      @like = Like.find_by(user_id: current_user.id, post_id: @post.id)
    end
  end

  def destroy
    if user_signed_in? && current_user.id == @post.user_id
      @post.destroy
    end
    redirect_to root_path
  end

  def search
    return nil if params[:keyword] == ""
    tag = Tag.where(['name LIKE ?', "%#{params[:keyword]}%"] )
    render json:{ keyword: tag }
  end

  def squeeze
    @posts = Post.where(category_id: params[:category_id]).order(created_at: :desc)
  end

  def post_search
    @posts = Post.search(params[:keyword])
  end

  private

  def post_params
    params.require(:posts_tag).permit(:title, :content, :category_id, :name).merge(user_id: current_user.id)
  end

  def set_post
    @post = Post.find(params[:id])
  end
end
