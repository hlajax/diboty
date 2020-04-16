class CreateVilles < ActiveRecord::Migration[5.2]
  def change
    create_table :villes do |t|
      t.string :nom
      t.text :description
      t.string :slug

      t.timestamps
    end
    add_index :villes, :slug, unique: true
  end
end
