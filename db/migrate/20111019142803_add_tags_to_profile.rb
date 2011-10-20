class AddTagsToProfile < ActiveRecord::Migration
  def change
    add_column :profiles, :tags, :string
  end
end
