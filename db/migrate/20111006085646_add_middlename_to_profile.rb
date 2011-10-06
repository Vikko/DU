class AddMiddlenameToProfile < ActiveRecord::Migration
  def change
    add_column :profiles, :middlename, :string
  end
end
