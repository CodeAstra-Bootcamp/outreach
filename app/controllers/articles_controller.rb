class ArticlesController < ApplicationController
  def index
    @articles = Article.all
  end

  def new
    @article = Article.new
  end

  def create
    @article = Article.new
    @article.title = params[:article][:title]
    @article.body = params[:article][:body]
    if @article.save
      flash[:success] = "Article Saved Successfully"
      redirect_to blog_path
    else
      render :new
    end
  end
end
