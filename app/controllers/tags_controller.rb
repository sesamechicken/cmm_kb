class TagsController < ApplicationController
  # GET /articles
def index

  if params[:tag]
    p "YES TAG PARAM"
    @articles = Article.tagged_with(params[:tag])
  else
    @articles = Article.all(:order => 'created_at DESC')
  end
  respond_to do |format|
    format.html # index.html.erb
    format.json { render json: @articles }
  end
end


end
