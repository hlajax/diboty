class CreateLoyerentreprises < ActiveRecord::Migration[5.2]
  def change
    create_table :loyerentreprises do |t|
      t.string :nom_proprietaire
      t.string :date_de_naissance_proprietaire
      t.string :lieu_de_naissance_proprietaire
      t.string :telephones_proprietaire
      t.string :email_proprietaire
      t.string :lieu_de_residence_proprietaire
      t.string :raison_sociale
      t.string :secteur
      t.string :fiche
      t.string :rccm
      t.string :nif
      t.string :telephones
      t.string :email
      t.string :cnamgs
      t.string :cnss

      t.timestamps
    end
  end
end
