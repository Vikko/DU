class PagesController < ApplicationController
    load_and_authorize_resource
  def index
    @search = Page.search(params[:search])
    @pages = @search
  end
end
