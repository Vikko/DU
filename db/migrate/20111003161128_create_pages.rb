class CreatePages < ActiveRecord::Migration
  def change
    create_table :pages do |t|
      t.string :title
      t.text :content
      t.boolean :published
      t.string :author

      t.timestamps
    end
  end
end
