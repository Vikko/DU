class User < ActiveRecord::Base
  self.per_page = 8
  authenticates_with_sorcery!
  
  attr_accessible :email, :username, :password, :password_confirmation, :role
  
  validates_confirmation_of :password
  validates_presence_of :password, :on => :create
  validates_presence_of :email
  validates_uniqueness_of :email
end
