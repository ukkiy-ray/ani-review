class PostsController < ApplicationController
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
    @post = Post.find(params[:id])
  end

  private

  def post_params
    params.require(:posts_tag).permit(:title, :content, :category_id, :name).merge(user_id: current_user.id)
  end

end
