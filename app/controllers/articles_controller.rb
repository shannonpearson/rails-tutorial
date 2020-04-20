class ArticlesController < ApplicationController
  def show
    @article = Article.find(params[:id])
  end

  def new # nothing happens if this is removed so what is it doing?
  end 

  def create
    @article = Article.new(article_params) # initialize Article model - defined in models/article.rb
    @article.save
    redirect_to @article
  end

  private
  def article_params
    params.require(:article).permit(:title, :text) #specify allowed parameters ('strong parameters') for security
  end
end
