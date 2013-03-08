class AddArchivedToPages < ActiveRecord::Migration
  def change
    add_column :pages, :archived, :boolean
  end
end
