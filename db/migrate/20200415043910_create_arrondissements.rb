class CreateArrondissements < ActiveRecord::Migration[5.2]
  def change
    create_table :arrondissements do |t|
      t.string :nom
      t.text :description
      t.string :slug

      t.timestamps
    end
    add_index :arrondissements, :slug, unique: true
  end
end
