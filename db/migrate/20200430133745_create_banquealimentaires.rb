class CreateBanquealimentaires < ActiveRecord::Migration[5.2]
  def change
    create_table :banquealimentaires do |t|
      t.integer :statut_id
      t.integer :situation_id
      t.integer :actu_id
      t.string :nombre_de_personnes
      t.string :nombre_handicapes
      t.string :nombre_vieux
      t.string :nombre_jeune_mere
      t.string :nombre_jeune
      t.string :nombre_nourisson
      t.integer :chef_id
      t.integer :distribue_id
      t.integer :compte_id

      t.timestamps
    end
  end
end
