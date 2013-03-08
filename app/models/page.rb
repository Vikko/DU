class Page < ActiveRecord::Base
  scope :random, lambda { |*args| { :order=>'RAND()', :limit=>args[0] || 1 } }
  
  @regex = /^[a-zA-Z0-9\-_]*$/
  
  validates_presence_of :title, :content, :navigation_link
  validates_format_of :navigation_link, :with => @regex
  
end
