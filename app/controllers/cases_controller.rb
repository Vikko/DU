class CasesController < InheritedResources::Base
    load_and_authorize_resource
    
    def index
      @blogpages = Blogpage.order("created_at DESC")
    end
    
    def new
      @case.author = current_user.email
      new!
    end
end
