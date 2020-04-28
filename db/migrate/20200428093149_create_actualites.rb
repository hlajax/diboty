class CreateActualites < ActiveRecord::Migration[5.2]
  def change
    create_table :actualites do |t|
      t.string :titre
      t.string :photo
      t.string :lien

      t.timestamps
    end
  end
end
