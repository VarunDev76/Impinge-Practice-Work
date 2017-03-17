class PostsController < ApplicationController
  def index
    # @posts = Post.all
    @posts = Post.joins(:users).select("users.*,comments.*").find params[:id]
    # @posts = Post.find_each { |post| Post.reset_counters(post.id, :comments)}
  end

  def show
  end

  def delete
  end

  def update
  end

  def new
    @posts = Post.new
  end

  def create
    @posts = Post.new(post_params)
    if @posts.valid?
        @posts.save
        @msg = "post will Save the records"
        redirect_to posts_path
    else
        @errors = @posts.errors.full_messages
        render new_post_path
    end
  end

  def post_params
    return params.require(:post).permit(:post)
  end

end
