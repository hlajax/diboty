class CreateDonNumeraires < ActiveRecord::Migration[5.2]
  def change
    create_table :don_numeraires do |t|
      t.string :nom
      t.string :nom_entreprise
      t.string :numero_de_telephone
      t.string :email
      t.string :adresse
      t.string :montant
      t.integer :nature_id
      t.string :date

      t.timestamps
    end
  end
end
