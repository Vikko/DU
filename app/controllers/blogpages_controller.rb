class BlogpagesController < InheritedResources::Base
  def index
    @blogpages = Blogpage.find(:all, :order => "created_at DESC")
  end
  
  def show
    @blogpage = Blogpage.find(params[:id])
    @comments = @blogpage.comments
  end
end
