class AddNombreepouseToCompte < ActiveRecord::Migration[5.2]
  def change
    add_column :comptes, :nombreepouse, :string
  end
end
