class EventsController < InheritedResources::Base
    load_and_authorize_resource
    
    def new
      @event.author = current_user.email
      new!
    end
end
