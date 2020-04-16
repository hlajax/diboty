class CreateDons < ActiveRecord::Migration[5.2]
  def change
    create_table :dons do |t|
      t.string :nom
      t.string :nom_entreprise
      t.string :numero_de_telephone
      t.string :email
      t.string :adresse
      t.text :detail
      t.string :date

      t.timestamps
    end
  end
end
