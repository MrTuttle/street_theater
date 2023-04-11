class CreatePerforms < ActiveRecord::Migration[7.0]
  def change
    create_table :performs do |t|
      t.date :date
      t.float :cost
      t.references :spectacle, null: false, foreign_key: true

      t.timestamps
    end
  end
end
