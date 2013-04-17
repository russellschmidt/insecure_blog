class CommentsController < ApplicationController
  before_filter :find_post

  def new
    @comment = Comment.new
  end

  def create
    @comment = @post.comments.build(params[:comment])

    if @comment.save
      redirect_to @post, notice: "Your comment has been saved and is awaiting review by our staff"
    else
      render action: :new
    end
  end

  private

  def find_post
    @post = Post.find(params[:post_id])
  end
end
