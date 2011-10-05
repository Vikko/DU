class Comment < ActiveRecord::Base
  belongs_to :blogpage
  attr_accessible :user, :email, :content
end
