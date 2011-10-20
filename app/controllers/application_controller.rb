class ApplicationController < ActionController::Base
  protect_from_forgery
  
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
      pa.each do |page|
        if page.type == "Event"
          @relatedevents << page
        else
          @relatedpages << page
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
