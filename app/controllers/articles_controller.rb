class ArticlesController < ApplicationController
  def index
    @articles = Article.all.decorate
  end

  def show
    @article = Article.find(params[:id]).decorate
  end

  def new
    @article = Article.new.decorate
  end

  def create
    @article = Article.new(article_params).decorate

    if @article.save
      redirect_to @article
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    @article = Article.find(params[:id]).decorate
  end

  def update
    @article = Article.find(params[:id]).decorate

    if @article.update(article_params)
      redirect_to @article
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @article = Article.find(params[:id]).decorate
    @article.destroy

    redirect_to root_path, status: :see_other
  end

  private
    def article_params
      params.require(:article).permit(:title, :body, :status)
	  end
end
