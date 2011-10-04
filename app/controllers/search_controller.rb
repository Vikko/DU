class SearchController < ApplicationController
  def index
    @results = Page.search(params[:search])
  end
end
