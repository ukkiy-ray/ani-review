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
    @tags = @post.tags
  end

  def destroy
    @post = Post.find(params[:id])
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

  private

  def post_params
    params.require(:posts_tag).permit(:title, :content, :category_id, :name).merge(user_id: current_user.id)
  end

end
