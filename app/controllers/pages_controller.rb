class PagesController < ApplicationController
    load_and_authorize_resource
  def index
    @search = Page.search(params[:search])
    @pages = @search#.where("published=?", true)   # or @search.relation to lazy load in view
  end
end
