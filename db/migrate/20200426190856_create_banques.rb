class CreateBanques < ActiveRecord::Migration[5.2]
  def change
    create_table :banques do |t|
      t.integer :statut_id
      t.integer :situation_id
      t.integer :actu_id
      t.string :nombre_de_personnes
      t.string :nombre_handicapes
      t.string :nombre_vieux
      t.string :nombre_jeune_mere
      t.string :nombre_jeune
      t.string :nombre_nourisson

      t.timestamps
    end
  end
end
