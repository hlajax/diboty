class CreateCompteurs < ActiveRecord::Migration[5.2]
  def change
    create_table :compteurs do |t|
      t.string :libelle
      t.text :description

      t.timestamps
    end
  end
end
