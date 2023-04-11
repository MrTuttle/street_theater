class CreateSpectacles < ActiveRecord::Migration[7.0]
  def change
    create_table :spectacles do |t|
      t.string :title
      t.string :director
      t.text :decritpion
      t.float :duration
      t.string :distribution
      t.string :production
      t.string :coproduction
      t.string :origin
      t.string :public

      t.timestamps
    end
  end
end
