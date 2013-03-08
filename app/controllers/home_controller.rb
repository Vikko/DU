class HomeController < ApplicationController
  def index
    @sidetext = About.find(6)
    #@cases = Case.where(:published => true).order("created_at DESC").limit(2)
    @cases = Case.random(2).where(:published => true)
    @blogpages = Blogpage.where(:published => true).order("created_at DESC").limit(2)
    @agenda = Event.find(:all, :conditions => "end_date > NOW()", :order => "date ASC", :limit => 3)
  end
end
