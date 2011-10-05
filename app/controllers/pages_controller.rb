class PagesController < ApplicationController
  def index
    @search = Page.search(params[:search])
    @pages = @search.all   # or @search.relation to lazy load in view
  end
end
