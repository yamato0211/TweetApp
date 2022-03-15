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

  def edit
    @post = Post.find(params[:id])
  end

  def update
    @post = Post.find(params[:id])
    @post.content = params[:content]
    if @post.save
      flash[:notice] = "編集に成功しました"
      redirect_to("/posts/index")
    else
      flash.now[:notice] = "変更内容も空欄もしくは400字以上では投稿できません"
      render("posts/new")
    end
  end

  def destroy
    @post = Post.find(params[:id])
    @post.destroy
    flash[:notice] = "削除に成功しました"
    redirect_to("/posts/index") 
  end

end
