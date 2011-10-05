class CommentsController < InheritedResources::Base
  belongs_to :blogpage
  
  def create
    create! { parent_url }
  end
end
