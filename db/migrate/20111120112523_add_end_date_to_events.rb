class AddEndDateToEvents < ActiveRecord::Migration
  def change
    add_column :pages, :end_date, :datetime
  end
end
