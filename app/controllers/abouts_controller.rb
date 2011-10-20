class AboutsController < InheritedResources::Base
  load_and_authorize_resource
  def show
    @agenda = Event.find(:all, :order => "date ASC", :limit => 3)
    show!
  end
end
