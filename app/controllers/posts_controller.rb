class PostsController < ApplicationController
  before_action :set_post, only: [:show, :edit, :update, :destroy]
  helper_method :current_post_hit

  def index
    @posts = Post.all
  end

  def show
  end

  def new
    @post = Post.new
    respond_with(@post)
  end

  def edit
  end

  def create
    @post = Post.new(post_params)
    unless @post.save
      flash[:error] = "Could not be save"
    end
    respond_with(@post)
  end

  def update
   @post.update(post_params)
    respond_with(@post)
  end

  def destroy
    @post.destroy
    respond_with(@post)
  end


  private

  def set_post
    @post = Post.find(params[:id])
  end

  def post_params
    params.require(:post).permit(:title, :body, :published)
  end

  def current_post_hit
    hit = cookies['post_hit'].to_i
    hit += 1
    cookies['post_hit'] = hit
    hit
  end



end
