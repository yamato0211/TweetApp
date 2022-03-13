class PostsController < ApplicationController
  def index
    @posts = Post.all.order(id: "desc")
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(content: params[:content])
    if @post.save
      redirect_to("/posts/index")
    else
      flash.now[:notice] = "空欄での投稿もしくは400字以上の投稿はできません"
      render("posts/new")
    end
  end

  def show
    @post = Post.find(params[:id])
  end
end
