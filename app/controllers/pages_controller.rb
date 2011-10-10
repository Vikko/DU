class PagesController < ApplicationController
  def index
    @search = Page.search(params[:search])
    @pages = @search.where("published=?", true)   # or @search.relation to lazy load in view
  end
end
