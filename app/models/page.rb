class Page < ActiveRecord::Base
  validates_presence_of :title, :content
  
  def self.search(search)
    if search
      find(:all, :conditions => ['content LIKE ?', "%#{search}%"])
    else
      find(:all)
    end
  end
end
