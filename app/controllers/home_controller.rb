class HomeController < ApplicationController
  def index
    @sidetext = About.find(6)
    @cases = Case.where(:published => true).order("created_at DESC").limit(3)
    @blogpages = Blogpage.where(:published => true).order("created_at DESC").limit(3)
    @agenda = Event.find(:all, :order => "date ASC", :limit => 3)
  end
end
