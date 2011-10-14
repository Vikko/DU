class CreateProfiles < ActiveRecord::Migration
  def change
    create_table :profiles do |t|
      t.string :prefix
      t.string :firstname
      t.string :lastname
      t.string :suffix
      t.string :external_link
      t.string :department
      t.string :university
      t.string :firstnamefull

      t.timestamps
    end
  end
end
