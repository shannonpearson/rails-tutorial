class ArticlesController < ApplicationController
  def new # nothing happens if this is removed so what is it doing?
  end 

  def create
    render plain: params[:article].inspect # simple hash with key of plain
    # this displays: <ActionController::Parameters {"title"=>"test", "text"=>"hi"} permitted: false>
  end
end
