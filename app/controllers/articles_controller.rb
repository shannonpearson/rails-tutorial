class ArticlesController < ApplicationController
  def new # nothing happens if this is removed so what is it doing?
  end 

  def create
    @article = Article.new(params.require(:article).permit(:title, :text)) # initialize Article model - defined in models/article.rb; specify allowed parameters ('strong parameters') for security
    @article.save
    redirect_to @article
  end
end
