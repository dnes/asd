class PostsController < ApplicationController
  before_filter :authenticate_user!
  def index
    @posts = Post.all
  end

  def show
    @post = Post.find(params[:id])
  end

  def new
    @post = Post.new
  end

  def edit
    @post = Post.find(params[:id])
  end

  def create
    @post = Post.new(params[:post])
    if @post.save
      redirect_to(@post, :notice => 'Post was successfully created!')
    else
      render 'new'
    end
  end


  def update
    @post = Post.find(params[:id])
    if @post.update_attributes(params[:post])
      redirect_to(@post, :notice => 'Post was successfully updated!') 
    else
      render 'edit'
    end
  end

  def destroy
   Post.destroy(params[:id])
       
    redirect_to(posts_path, :notice => 'Post deleted successfully') 
  end

end
