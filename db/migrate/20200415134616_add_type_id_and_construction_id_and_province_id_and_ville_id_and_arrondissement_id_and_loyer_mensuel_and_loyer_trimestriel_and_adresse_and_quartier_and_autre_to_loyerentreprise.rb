class AddTypeIdAndConstructionIdAndProvinceIdAndVilleIdAndArrondissementIdAndLoyerMensuelAndLoyerTrimestrielAndAdresseAndQuartierAndAutreToLoyerentreprise < ActiveRecord::Migration[5.2]
  def change
    add_column :loyerentreprises, :type_id, :integer
    add_column :loyerentreprises, :construction_id, :integer
    add_column :loyerentreprises, :province_id, :integer
    add_column :loyerentreprises, :ville_id, :integer
    add_column :loyerentreprises, :arrondissement_id, :integer
    add_column :loyerentreprises, :loyer_mensuel, :string
    add_column :loyerentreprises, :loyer_trimestriel, :string
    add_column :loyerentreprises, :adresse, :string
    add_column :loyerentreprises, :quartier, :string
    add_column :loyerentreprises, :autre, :string
  end
end
