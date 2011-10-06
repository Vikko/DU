class HomeController < ApplicationController
  def index
    @about = About.first
    @cases = Case.find(:all, :order => "created_at DESC", :limit => 3)
    @blogpages = Blogpage.find(:all, :order => "created_at DESC", :limit => 3)
  end
end
