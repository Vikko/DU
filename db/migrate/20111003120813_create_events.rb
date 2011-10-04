class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.date :eventdate
      t.string :external_size

      t.timestamps
    end
  end
end
