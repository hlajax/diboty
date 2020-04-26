class AddStatutIdAndVilleIdToChef < ActiveRecord::Migration[5.2]
  def change
    add_column :chefs, :statut_id, :integer
    add_column :chefs, :ville_id, :integer
  end
end
