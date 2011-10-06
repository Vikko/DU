class CommentsController < InheritedResources::Base
  belongs_to :blogpage
  
  def create
    create! { parent_url }
  end
  
  def update
    update! { parent_url }
  end
end
