class CreateSignalements < ActiveRecord::Migration[5.2]
  def change
    create_table :signalements do |t|
      t.string :pays
      t.string :ville
      t.string :nom
      t.integer :sexe_id
      t.string :passeport
      t.string :contact_whatsapp
      t.string :date
      t.text :raison_du_sejour
      t.string :enfants
      t.string :pieces_jointes

      t.timestamps
    end
  end
end
