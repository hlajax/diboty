class RemoveCompteIdFromBanque < ActiveRecord::Migration[5.2]
  def change
    remove_column :banques, :compte_id, :integer
  end
end
