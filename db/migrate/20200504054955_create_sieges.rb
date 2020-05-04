class CreateSieges < ActiveRecord::Migration[5.2]
  def change
    create_table :sieges do |t|
      t.string :nom
      t.string :slug

      t.timestamps
    end
    add_index :sieges, :slug, unique: true
  end
end
