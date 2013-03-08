class AddNavigationLinkToPages < ActiveRecord::Migration
  def change
    add_column :pages, :navigation_link, :string
    
    Page.all.each do |p|
      p.navigation_link = p.title.downcase.tr!(" ","-") || p.title.downcase
      p.save
    end
  end
end
