class AddReferenceLocationToPerforms < ActiveRecord::Migration[7.0]
  def change
    add_reference :performs, :location, foreign_key: true
  end
end
