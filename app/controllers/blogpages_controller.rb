class BlogpagesController < InheritedResources::Base
  load_and_authorize_resource
  def index
    @blogpages = Blogpage.order("created_at DESC")
  end
  
  def show
    @blogpage = Blogpage.find(params[:id])
    @comments = @blogpage.comments
    load_related(@blogpage)
    @agenda = @relatedevents
  end
  
  def create
    unless @blogpage.author
      @blogpage.author = current_user.email
    end
    create!
  end
end
