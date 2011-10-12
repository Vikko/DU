class CommentsController < InheritedResources::Base
   load_and_authorize_resource :blogpage
   load_and_authorize_resource :comment, :through => :blogpage
   belongs_to :blogpage
  
   def new
     @comment = Comment.new
     if current_user
       @comment.user = current_user.username
       @comment.email = current_user.email
     end
     new!
   end
  
  def create
      create! { parent_url }
    authorize! :create, @comment  
  end
  
  def update
      update! { parent_url }
      authorize! :update, @comment    
  end
  
  def destroy
    destroy! { parent_url }
    authorize! :destroy, @comment
  end
end
