class BlogpagesController < InheritedResources::Base
  #load_and_authorize_resource
  def index
    @blogpages = Blogpage.order("created_at DESC")
  end
  
  def show
    if params[:id] =~ /^\d+/
      @blogpage = Blogpage.find(params[:id])
    else
      @blogpage = Blogpage.find_by_navigation_link(params[:id])
    end
    authorize! :read, @blogpage
    @comments = @blogpage.comments
    load_related(@blogpage)
    @agenda = @relatedevents
    show!
  end  
  
  def edit
    if params[:id] =~ /^\d+/
      @blogpage = Blogpage.find(params[:id])
    else
      @blogpage = Blogpage.find_by_navigation_link(params[:id])
    end
    authorize! :update, @blogpage
    edit!
  end
  
  def update
    if params[:id] =~ /^\d+/
      @blogpage = Blogpage.find(params[:id])
    else
      @blogpage = Blogpage.find_by_navigation_link(params[:id])
    end
    authorize! :update, @blogpage
    update!
  end
  
  def destroy
    if params[:id] =~ /^\d+/
      @blogpage = Blogpage.find(params[:id])
    else
      @blogpage = Blogpage.find_by_navigation_link(params[:id])
    end
    authorize! :destroy, @blogpage
    destroy!
  end
  
  def create
    unless params[:blogpage][:author]
      @blogpage.author = current_user.email
    end
    create!
  end
  
  def unpublish
    b = Blogpage.find(params[:id])
    b.published = 0;
    b.save
    redirect_to blogpages_path
  end
end
