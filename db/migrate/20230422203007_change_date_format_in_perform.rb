class ChangeDateFormatInPerform < ActiveRecord::Migration[7.0]
  def change
    change_column :performs, :date, :datetime
  end
end
