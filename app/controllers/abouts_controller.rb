class AboutsController < ApplicationController
  load_and_authorize_resource
  def show
    @page = About.first
  end
  
  def edit
    @page = About.first
  end
  
  def update
     @page = About.first
     if @page.update_attributes(params[:about])
        redirect_to :action => 'show'
     else
        render :action => 'edit'
     end
  end
end
