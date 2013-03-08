class EventsController < InheritedResources::Base
    #load_and_authorize_resource

    def index
      @events = Event.order("date DESC")
      @events.each do |event|
        if event.end_date && event.end_date <= Time.now + 1.day
          event.archived = 1;
          event.save
        end
      end
      @new_events = @events.select{|event| event.end_date && event.end_date > Time.now}
      @old_events = @events - @new_events
    end
    
    def new
      @event = Event.new
      @event.author = current_user.email
      new!
    end
    
    def show
      if params[:id] =~ /^\d+/
        @event = Event.find(params[:id])
      else
        @event = Event.find_by_navigation_link(params[:id])
      end
      authorize! :read, @event
      if @event.end_date <= Time.now + 1.day
        @event.archived = 1;
        @event.save
      end
      show!
    end
    
    def edit
      if params[:id] =~ /^\d+/
        @event = Event.find(params[:id])
      else
        @event = Event.find_by_navigation_link(params[:id])
      end
      authorize! :update, @event
      edit!
    end
    
    def update
      if params[:id] =~ /^\d+/
        @event = Event.find(params[:id])
      else
        @event = Event.find_by_navigation_link(params[:id])
      end
      authorize! :update, @event
      update!
    end
    
    def destroy
      if params[:id] =~ /^\d+/
        @event = Event.find(params[:id])
      else
        @event = Event.find_by_navigation_link(params[:id])
      end
      authorize! :destroy, @event
      destroy!
    end
end
