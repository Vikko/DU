class HomeController < ApplicationController
  def index
    @about = About.first
    @projects = Project.all
  end
end
