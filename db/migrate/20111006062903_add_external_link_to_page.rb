class AddExternalLinkToPage < ActiveRecord::Migration
  def change
    add_column :pages, :external_link, :string
    add_column :pages, :date, :datetime
  end
end
