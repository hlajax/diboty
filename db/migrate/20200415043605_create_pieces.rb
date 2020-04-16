class CreatePieces < ActiveRecord::Migration[5.2]
  def change
    create_table :pieces do |t|
      t.string :nom
      t.text :description
      t.string :slug

      t.timestamps
    end
    add_index :pieces, :slug, unique: true
  end
end
