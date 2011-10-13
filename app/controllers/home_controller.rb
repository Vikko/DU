class HomeController < ApplicationController
  def index
    @sidetext = About.find(6)
    @about = About.first
    @cases = Case.where(:published => true).order("created_at DESC").limit(3)
    @blogpages = Blogpage.where(:published => true).order("created_at DESC").limit(3)
  end
end
