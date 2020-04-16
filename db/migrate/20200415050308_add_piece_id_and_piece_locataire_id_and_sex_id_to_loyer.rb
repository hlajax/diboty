class AddPieceIdAndPieceLocataireIdAndSexIdToLoyer < ActiveRecord::Migration[5.2]
  def change
    add_column :loyers, :piece_id, :integer
    add_column :loyers, :piece_locataire_id, :integer
    add_column :loyers, :sex_id, :integer
  end
end
