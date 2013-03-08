class ProfilesController < InheritedResources::Base
  #load_and_authorize_resource

  def create
    create! { collection_url }
  end
  
  def destroy
   if params[:id] =~ /^\d+/
      @profile = Profile.find(params[:id])
    else
      @profile = Profile.find_by_navigation_link(params[:id])
    end
    authorize! :destroy, @profile
    destroy!
  end
  
  def edit
    if params[:id] =~ /^\d+/
      @profile = Profile.find(params[:id])
    else
      @profile = Profile.find_by_navigation_link(params[:id])
    end
    authorize! :update, @profile
    stripprofile
    edit!
  end
  
  def update
    if params[:id] =~ /^\d+/
       @profile = Profile.find(params[:id])
     else
       @profile = Profile.find_by_navigation_link(params[:id])
     end
     authorize! :update, @profile
    stripprofile
    update! { collection_url }
  end
  
  def index
    order = params[:sort] || "lastname ASC"
    @profiles = Profile.find(:all, :order => order)
  end
  
  def stripprofile
    @profile.prefix.strip!
    @profile.firstname.strip!
    @profile.lastname.strip!
    @profile.suffix.strip!
    @profile.external_link.strip!
    @profile.university.strip!
    @profile.middlename.strip!
    @profile.firstnamefull.strip!
    @profile.department.strip!
  end
end
