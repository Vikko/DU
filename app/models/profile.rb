class Profile < ActiveRecord::Base
  validates_uniqueness_of :navigation_link
  before_save :remove_dots
  
  def to_param
    navigation_link
  end
  
  def remove_dots
    navigation_link.tr!(".","")
  end
  
  def shortname
    name = ""
  	unless self.prefix.blank?
  		name += self.prefix.strip + " "
  	end
  	name += self.firstname.strip + " "
  	unless self.middlename.blank?
  		name += self.middlename.strip + " "
  	end
  	name += self.lastname.strip + " "
  	unless self.suffix.blank?
  		name += self.suffix.strip
  	end
  	return name
	end

  def fullname
    name = self.shortname
  	unless self.firstnamefull.blank?
  		name += " (" + self.firstnamefull.strip + ")"
  	end
  	return name
  end
end