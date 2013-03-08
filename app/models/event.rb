class Event < Page
  validates_uniqueness_of :navigation_link
  
  scope :present, where("end_date IS NULL OR end_date > \"#{Time.now - 1.day}\"")
  scope :passed, where("end_date IS NOT NULL OR end_date <= \"#{Time.now - 1.day}\"")
  
  def to_param
    navigation_link
  end
end
