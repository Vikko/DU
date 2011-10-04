class CreateOpinies < ActiveRecord::Migration
  def change
    create_table :opinies do |t|

      t.timestamps
    end
  end
end
