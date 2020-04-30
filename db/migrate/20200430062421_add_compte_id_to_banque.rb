class AddCompteIdToBanque < ActiveRecord::Migration[5.2]
  def change
    add_column :banques, :compte_id, :integer
  end
end
