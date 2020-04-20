class ArticlesController < ApplicationController
  def index # on /articles GET route page load
    @articles = Article.all
  end

  def show # on /articles/:id GET route page load
    @article = Article.find(params[:id])
  end

  def new # on /articles/new GET route page load
    @article = Article.new
  end 

  def edit # on /articles/:id/edit route page load
    @article = Article.find(params[:id])
  end

  def create # on /articles POST route call from /articles/new page
    @article = Article.new(article_params) # initialize Article model - defined in models/article.rb
    if @article.save
      redirect_to @article
    else
      render 'new'
    end
  end

  def update # on /articles/:id PUT/PATCH(?) route call from /articles/:id/edit page
    # accepts hash containing attributes to update
    @article = Article.find(params[:id])
   
    if @article.update(article_params)
      redirect_to @article
    else
      render 'edit'
    end
  end

  def destroy # on /articles/:id DELETE route call from
    @article = Article.find(params[:id])
    @article.destroy

    redirect_to articles_path
  end
  # we don't need a view for this action since we're redirecting to the index action

  private
  def article_params
    params.require(:article).permit(:title, :text) # specify allowed parameters ('strong parameters') for security on create or update
  end
end
