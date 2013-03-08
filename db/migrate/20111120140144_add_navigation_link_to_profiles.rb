class AddNavigationLinkToProfiles < ActiveRecord::Migration
  def change
    add_column :profiles, :navigation_link, :string
    
    Profile.all.each do |p|
      fullname = ""
      if p.firstname
        fullname += (p.firstname.downcase.tr!(" ","-")||p.firstname.downcase) + "-"
        fullname = fullname.tr!(".","")
      end
      if p.lastname
         fullname += (p.lastname.downcase.tr!(" ","-")||p.lastname.downcase)
      end
      p.navigation_link = fullname
      p.save
    end
  end
end
