class SearchesController < ApplicationController
  # GET /searches
  # GET /searches.json
  def index
   # @searches = Search.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @searches }
    end
  end

  # GET /searches/1
  # GET /searches/1.json
  def show
    @search = Search.find(params[:id])

    respond_to do |format|
     
      format.html # show.html.erb
      format.json { render json: @search }
    end
  end

  
end
