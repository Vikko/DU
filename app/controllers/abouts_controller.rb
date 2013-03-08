class AboutsController < InheritedResources::Base
  #load_and_authorize_resource

  def show
    if params[:id] =~ /^\d+/
      @about = About.find(params[:id])
    else
      @about = About.find_by_navigation_link(params[:id])
    end
    authorize! :read, @about
    @agenda = Event.find(:all, :conditions => "end_date > NOW()", :order => "date ASC", :limit => 3)
    show!
  end
  
  def edit
    if params[:id] =~ /^\d+/
      @about = About.find(params[:id])
    else
      @about = About.find_by_navigation_link(params[:id])
    end
    authorize! :update, @about
    edit!
  end
    
  def update
    if params[:id] =~ /^\d+/
      @about = About.find(params[:id])
    else
      @about = About.find_by_navigation_link(params[:id])
    end
    authorize! :update, @about
    update!
  end      
end
