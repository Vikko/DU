class CommentsController < InheritedResources::Base
  belongs_to :blogpage, :polymorphic => true
end
