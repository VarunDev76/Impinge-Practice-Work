class CommentsController < ApplicationController
  def index
    @post = Post.find(params[:post_id])
    @comments = @post.comments
  end

  def show
  end

  def destroy
    # @comments = Comment.find(params[:id])
    # if @comments.destroy
    #     redirect_to post_comments_path
    # else
    #   @errors = @comments.errors.full_messages

    # end
  end

  def update
  end

  def new
    @post = Post.find(params[:post_id])
    @comment = @post.comments.new
  end

  def create
    @post = Post.find(params[:post_id])
    @comment = @post.comments.new(comment_params)
        # binding.pry
    if @comment.valid?
        @comment.save
        @msg = "comment will Save the records"
        redirect_to post_comments_path
    else
        @errors = @comment.errors.full_messages
        render new_post_comment_path
    end
  end

  def comment_params
    return params.require(:comment).permit(:comment)
  end

end
