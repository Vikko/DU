class HomeController < ApplicationController
  def index
    @sidetext = About.find(6)
    @about = About.first
    @cases = Case.find(:all, :order => "created_at DESC", :limit => 3, :conditions => ["published = ?", true])
    @blogpages = Blogpage.find(:all, :order => "created_at DESC", :limit => 3, :conditions => ["published = ?", true])
  end
end
