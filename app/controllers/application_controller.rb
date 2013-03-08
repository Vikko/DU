class ApplicationController < ActionController::Base
  protect_from_forgery

  rescue_from CanCan::AccessDenied do |exception|
      flash[:alert] = "Access Denied. Please log in."
      redirect_to login_url
    end

def load_related(page)
    search = []
    unless page.tags.blank?
      search = page.tags.split(", ")
    end
    pages = []
    profiles = []
    search.each do |s|
      pages << Page.where("tags LIKE ?", '%'+s+'%')
      profiles << Profile.where("tags LIKE ?", '%'+s+'%')
    end
    @relatedpages = []
    @relatedevents = []
    @relatedprofiles = []
    pages.each do |pa|
      pa.reject! {|p| p==page}
      pa.each do |p|
        if p.type == "Event"
          @relatedevents << p
        else
          @relatedpages << p
        end
      end
    end
    profiles.each do |pr|
      pr.each do |profile|
        @relatedprofiles << profile
      end 
    end    
    @relatedpages.uniq!
    @relatedevents.uniq!
    @relatedprofiles.uniq!
    end
end
