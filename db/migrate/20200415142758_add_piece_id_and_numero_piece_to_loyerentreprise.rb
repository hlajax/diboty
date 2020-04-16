class AddPieceIdAndNumeroPieceToLoyerentreprise < ActiveRecord::Migration[5.2]
  def change
    add_column :loyerentreprises, :piece_id, :integer
    add_column :loyerentreprises, :numero_piece, :string
  end
end
