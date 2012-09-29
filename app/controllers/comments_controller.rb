class CommentsController < ApplicationController

  def create
    @post = Post.find(params[:post_id])
    @comment = @post.comments.create(params[:comment])

     redirect_to posts_path(@post)
  end

  def destroy
    @post = Post.find(params[:post_id])
    @post.comments.destroy(params[:id])
    
    redirect_to post_path(@post)
  end

end
