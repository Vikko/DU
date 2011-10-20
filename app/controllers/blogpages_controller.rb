class BlogpagesController < InheritedResources::Base
  load_and_authorize_resource
  def index
    @blogpages = Blogpage.order("created_at DESC")
  end
  
  def show
    @blogpage = Blogpage.find(params[:id])
    @comments = @blogpage.comments
    search = []
    if @blogpage.tags
      search = @blogpage.tags.split(", ")
    end
    pages = []
    profiles = []
    search.each do |s|
      pages << Page.where("tags LIKE ?", '%'+s+'%')
      profiles << Profile.where("tags LIKE ?", '%'+s+'%')
    end
    @relatedpages = []
    @relatedprofiles = []
    pages.each do |pa|
      pa.each do |page|
        @relatedpages << page
      end
    end
    profiles.each do |pr|
      pr.each do |profile|
        @relatedprofiles << profile
      end 
    end
    @relatedpages.uniq!
    @relatedprofiles.uniq!
  end
  
  def create
    unless @blogpage.author
      @blogpage.author = current_user.email
    end
    create!
  end
end
