class AddNumeroPieceAndNumeroPieceLocataireToLoyer < ActiveRecord::Migration[5.2]
  def change
    add_column :loyers, :numero_piece, :string
    add_column :loyers, :numero_piece_locataire, :string
  end
end
