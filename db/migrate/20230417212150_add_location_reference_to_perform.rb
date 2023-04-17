class AddLocationReferenceToPerform < ActiveRecord::Migration[7.0]
  def change
    add_reference :performs, :location, index: true
  end
end
