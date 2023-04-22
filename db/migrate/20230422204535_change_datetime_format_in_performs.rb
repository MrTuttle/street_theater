class ChangeDatetimeFormatInPerforms < ActiveRecord::Migration[7.0]
  def change
    change_column :performs, :date, :time
  end
end
