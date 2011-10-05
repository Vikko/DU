class BlogpagesController < InheritedResources::Base
  def show
    @blogpage = Blogpage.find(params[:id])
    @comments = @blogpage.comments
  end
end
