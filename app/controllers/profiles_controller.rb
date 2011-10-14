class ProfilesController < InheritedResources::Base
  load_and_authorize_resource

  def create
    create! { collection_url }
  end
  
  def update
    update! { collection_url }
  end
  
  def index
    @profiles = Profile.find(:all, :order => "lastname ASC")
  end
end
