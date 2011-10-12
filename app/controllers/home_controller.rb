class HomeController < ApplicationController
load_and_authorize_resource :about, :case, :blogpage
  def index
    @sidetext = About.find(6)
    @about = About.first
    @cases = Case.find(:all, :order => "created_at DESC", :limit => 3)
    @blogpages = Blogpage.find(:all, :order => "created_at DESC", :limit => 3)
  end
end
