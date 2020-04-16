class CreatePieceLocataires < ActiveRecord::Migration[5.2]
  def change
    create_table :piece_locataires do |t|
      t.string :nom
      t.text :description
      t.string :slug

      t.timestamps
    end
    add_index :piece_locataires, :slug, unique: true
  end
end
