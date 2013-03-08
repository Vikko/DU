class AddBloggerImagePathBloggerNameBloggerInfoToBlogpage < ActiveRecord::Migration
  def change
    add_column :pages, :blogger_image_path, :string
    add_column :pages, :blogger_name, :string
    add_column :pages, :blogger_info, :string
  end
end
