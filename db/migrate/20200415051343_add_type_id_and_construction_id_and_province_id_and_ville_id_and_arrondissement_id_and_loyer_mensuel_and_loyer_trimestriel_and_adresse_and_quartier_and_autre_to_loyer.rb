class AddTypeIdAndConstructionIdAndProvinceIdAndVilleIdAndArrondissementIdAndLoyerMensuelAndLoyerTrimestrielAndAdresseAndQuartierAndAutreToLoyer < ActiveRecord::Migration[5.2]
  def change
    add_column :loyers, :type_id, :integer
    add_column :loyers, :construction_id, :integer
    add_column :loyers, :province_id, :integer
    add_column :loyers, :ville_id, :integer
    add_column :loyers, :arrondissement_id, :integer
    add_column :loyers, :loyer_mensuel, :string
    add_column :loyers, :loyer_trimestriel, :string
    add_column :loyers, :adresse, :string
    add_column :loyers, :quartier, :string
    add_column :loyers, :autre, :string
  end
end
