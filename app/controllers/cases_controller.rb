class CasesController < InheritedResources::Base
    
    def index
      @cases = Case.order("created_at DESC")
      @agenda = Event.present.order("date ASC").limit(3)
    end
    
    def show
      if params[:id] =~ /^\d+/
        @case = Case.find(params[:id])
      else
        @case = Case.find_by_navigation_link(params[:id])
      end
      authorize! :read, @case
      @agenda = Event.present.order("date ASC").limit(2)
      @cases = Case.order("created_at DESC")
      load_related(@case)
      show!
    end
    
    def edit
      if params[:id] =~ /^\d+/
        @case = Case.find(params[:id])
      else
        @case = Case.find_by_navigation_link(params[:id])
      end
      authorize! :update, @case
      edit!
    end
    
    def update
      if params[:id] =~ /^\d+/
        @case = Case.find(params[:id])
      else
        @case = Case.find_by_navigation_link(params[:id])
      end
      authorize! :update, @case
      update!
    end
    
    def destroy
      if params[:id] =~ /^\d+/
        @case = Case.find(params[:id])
      else
        @case = Case.find_by_navigation_link(params[:id])
      end
      authorize! :destroy, @case
      destroy!
    end
    
    def new
      @case = Case.new
      @case.author = current_user.email
      new!
    end
end
