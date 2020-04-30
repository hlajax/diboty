class AddStatutIdAndSituationIdToCompte < ActiveRecord::Migration[5.2]
  def change
    add_column :comptes, :statut_id, :integer
    add_column :comptes, :situation_id, :integer
  end
end
