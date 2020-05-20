class CreateKitalimentaires < ActiveRecord::Migration[5.2]
  def change
    create_table :kitalimentaires do |t|
      t.integer :province_id
      t.string :ville
      t.string :arrondissement
      t.string :quartier
      t.integer :compteur_id
      t.string :nom
      t.integer :sex_id
      t.string :age
      t.string :profession
      t.string :nombre
      t.integer :cnamgs_id
      t.integer :contacts
      t.string :piece
      t.string :photo
      t.integer :eligible_id
      t.integer :chef_id

      t.timestamps
    end
  end
end
