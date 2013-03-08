class Event < Page
  validates_uniqueness_of :navigation_link
  
  def to_param
    navigation_link
  end
end
