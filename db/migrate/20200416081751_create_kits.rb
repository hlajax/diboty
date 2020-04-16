class CreateKits < ActiveRecord::Migration[5.2]
  def change
    create_table :kits do |t|
      t.integer :commune_id
      t.integer :arrondissement_id
      t.string :quartier
      t.string :nom
      t.integer :sex_id
      t.string :date_de_naissance
      t.string :lieu_de_naissance
      t.integer :statut_id
      t.string :niveau_etude_mere
      t.string :activite_mere
      t.string :revenu_mensuel
      t.integer :habitat_id
      t.string :telephones
      t.string :email
      t.string :activite_professionnelle
      t.string :cnamgs
      t.string :cnss
      t.string :religion
      t.string :lieu_de_priere
      t.string :nombre_handicap
      t.string :nombre_agees
      t.string :nombre_mere
      t.string :nombre_jeune
      t.string :nombre_orphelin
      t.string :numero_compteur
      t.string :numero_canal
      t.string :numero_mobile_money

      t.timestamps
    end
  end
end
