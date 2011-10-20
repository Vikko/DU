class CasesController < InheritedResources::Base
    load_and_authorize_resource
    
    def index
      @cases = Case.order("created_at DESC")
      @agenda = Event.find(:all, :order => "date ASC", :limit => 3)
    end
    
    def show
      @agenda = Event.find(:all, :order => "date ASC", :limit => 3)
      show!
    end
    
    def new
      @case.author = current_user.email
      new!
    end
end
