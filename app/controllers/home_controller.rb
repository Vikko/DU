class HomeController < ApplicationController
  def index
    @about = About.first
  end
end
