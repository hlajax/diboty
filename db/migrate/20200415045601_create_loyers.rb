class CreateLoyers < ActiveRecord::Migration[5.2]
  def change
    create_table :loyers do |t|
      t.string :nom_proprietaire
      t.string :date_de_naissance_proprietaire
      t.string :lieu_de_naissance_proprietaire
      t.string :telephones_proprietaire
      t.string :email_proprietaire
      t.string :lieu_de_residence_proprietaire
      t.string :nom_locataire
      t.string :nationalite_locataire
      t.string :profession_locataire
      t.string :date_de_naissance_locataire
      t.string :lieu_de_naissance_locataire
      t.string :telephones_locataire
      t.string :email_locataire
      t.string :employeur_locataire
      t.string :secteur_locataire
      t.string :cnamgs_locataire
      t.string :cnss_locataire
      t.string :justification_locataire

      t.timestamps
    end
  end
end
