class AddProvinceIdAndVilleIdAndArrondissementIdToCompte < ActiveRecord::Migration[5.2]
  def change
    add_column :comptes, :province_id, :integer
    add_column :comptes, :ville_id, :integer
    add_column :comptes, :arrondissement_id, :integer
  end
end
