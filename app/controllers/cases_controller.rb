class CasesController < InheritedResources::Base
    load_and_authorize_resource
    
    def new
      @case.author = current_user.email
      new!
    end
end
