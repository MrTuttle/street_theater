class RenameColumnDescritptionInSpectacles < ActiveRecord::Migration[7.0]
  def change
    rename_column('spectacles', 'decritpion', 'description')
  end
end
